package com.dentsusoken.tw_crypto

import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.security.KeyPair
import java.security.KeyPairGenerator
import java.security.spec.ECGenParameterSpec
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import java.security.KeyStore
import java.security.PrivateKey
import java.security.PublicKey
import java.security.KeyFactory
import java.security.spec.PKCS8EncodedKeySpec
import java.security.spec.X509EncodedKeySpec
import java.util.Base64
import java.security.AlgorithmParameters
import java.security.spec.ECParameterSpec
import java.math.BigInteger
import java.security.spec.ECPrivateKeySpec

enum class PrivateKeyType(val value: String) {
    DER_ENCODED_P256("dep2"),
    PEM_STRING_DATA_P256("pep2"),
    X963_ENCODED_P256("x9p2"),
    SECURE_ENCLAVE_P256("sep2")
}

enum class ECCurveType(val value: Int) {
    P256(1),
    P384(2),
    P521(3)
}

/** TwCryptoPlugin */
class TwCryptoPlugin: FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel : MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "com.dentsusoken.TrustedWeb.DigitalWallet/tw_crypto")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        try {
            when (call.method) {
                "createPrivateKey" -> {
                    val keyType = call.argument<String>("keyType")
                    if (keyType == null) {
                        result.error("IllegalArgumentError", "keyType is required", null)
                        return
                    }
                    val keyData = createPrivateKey(PrivateKeyType.valueOf(keyType))
                    result.success(keyData)
                }
                "getPublicKeyPEM" -> {
                    val keyType = call.argument<String>("keyType")
                    val keyData = call.argument<ByteArray>("keyData")
                    if (keyType == null || keyData == null) {
                        result.error("IllegalArgumentError", "keyType and keyData are required", null)
                        return
                    }
                    val pemKey = getPublicKeyPEM(PrivateKeyType.valueOf(keyType), keyData)
                    result.success(pemKey)
                }
                "getPrivateKeyX963" -> {
                    val keyType = call.argument<String>("keyType")
                    val keyData = call.argument<ByteArray>("keyData")
                    if (keyType == null || keyData == null) {
                        result.error("IllegalArgumentError", "keyType and keyData are required", null)
                        return
                    }
                    val x963Key = getPrivateKeyX963(PrivateKeyType.valueOf(keyType), keyData)
                    result.success(x963Key)
                }
                "getCrvPrivateKeyX963" -> {
                    val crv = call.argument<Int>("crv")
                    if (crv == null) {
                        result.error("IllegalArgumentError", "crv is required", null)
                        return
                    }
                    val x963Key = getCrvPrivateKeyX963(ECCurveType.values()[crv - 1])
                    result.success(x963Key)
                }
                else -> {
                    result.notImplemented()
                }
            }
        } catch (e: Exception) {
            result.error("InternalError", e.message, null)
        }
    }

    private fun createPrivateKey(keyType: PrivateKeyType): ByteArray {
        val kpg = KeyPairGenerator.getInstance(
            KeyProperties.KEY_ALGORITHM_EC,
            when (keyType) {
                PrivateKeyType.SECURE_ENCLAVE_P256 -> "AndroidKeyStore"
                else -> null
            }
        )

        when (keyType) {
            PrivateKeyType.SECURE_ENCLAVE_P256 -> {
                val parameterSpec = KeyGenParameterSpec.Builder(
                    "key_alias",
                    KeyProperties.PURPOSE_SIGN or KeyProperties.PURPOSE_VERIFY
                ).apply {
                    setAlgorithmParameterSpec(ECGenParameterSpec("secp256r1"))
                    setDigests(KeyProperties.DIGEST_SHA256)
                }.build()
                kpg.initialize(parameterSpec)
            }
            else -> {
                kpg.initialize(ECGenParameterSpec("secp256r1"))
            }
        }

        val keyPair = kpg.generateKeyPair()
        return when (keyType) {
            PrivateKeyType.DER_ENCODED_P256 -> keyPair.private.encoded
            PrivateKeyType.PEM_STRING_DATA_P256 -> {
                val base64Key = Base64.getEncoder().encodeToString(keyPair.private.encoded)
                "-----BEGIN PRIVATE KEY-----\n$base64Key\n-----END PRIVATE KEY-----".toByteArray()
            }
            PrivateKeyType.X963_ENCODED_P256 -> convertToX963(keyPair.private)
            PrivateKeyType.SECURE_ENCLAVE_P256 -> keyPair.private.encoded
        }
    }

    private fun getPublicKeyPEM(keyType: PrivateKeyType, keyData: ByteArray): String {
        val privateKey = when (keyType) {
            PrivateKeyType.DER_ENCODED_P256 -> {
                val keyFactory = KeyFactory.getInstance("EC")
                keyFactory.generatePrivate(PKCS8EncodedKeySpec(keyData))
            }
            PrivateKeyType.PEM_STRING_DATA_P256 -> {
                val pemString = String(keyData)
                val base64Data = pemString
                    .replace("-----BEGIN PRIVATE KEY-----", "")
                    .replace("-----END PRIVATE KEY-----", "")
                    .replace("\n", "")
                val keyFactory = KeyFactory.getInstance("EC")
                keyFactory.generatePrivate(PKCS8EncodedKeySpec(Base64.getDecoder().decode(base64Data)))
            }
            PrivateKeyType.X963_ENCODED_P256 -> {
                val keyFactory = KeyFactory.getInstance("EC")
                keyFactory.generatePrivate(PKCS8EncodedKeySpec(convertFromX963(keyData)))
            }
            PrivateKeyType.SECURE_ENCLAVE_P256 -> {
                val keyStore = KeyStore.getInstance("AndroidKeyStore")
                keyStore.load(null)
                keyStore.getKey("key_alias", null) as PrivateKey
            }
        }

        val publicKey = when (keyType) {
            PrivateKeyType.SECURE_ENCLAVE_P256 -> {
                val keyStore = KeyStore.getInstance("AndroidKeyStore")
                keyStore.load(null)
                val entry = keyStore.getEntry("key_alias", null) as KeyStore.PrivateKeyEntry
                entry.certificate.publicKey
            }
            else -> {
                val keyPairGenerator = KeyPairGenerator.getInstance("EC")
                keyPairGenerator.initialize(ECGenParameterSpec("secp256r1"))
                keyPairGenerator.generateKeyPair().public
            }
        }

        val encoded = Base64.getEncoder().encodeToString(publicKey.encoded)
        return "-----BEGIN PUBLIC KEY-----\n$encoded\n-----END PUBLIC KEY-----"
    }

    private fun getPrivateKeyX963(keyType: PrivateKeyType, keyData: ByteArray): ByteArray {
        return when (keyType) {
            PrivateKeyType.DER_ENCODED_P256 -> {
                val keyFactory = KeyFactory.getInstance("EC")
                val privateKey = keyFactory.generatePrivate(PKCS8EncodedKeySpec(keyData))
                convertToX963(privateKey)
            }
            PrivateKeyType.PEM_STRING_DATA_P256 -> {
                val pemString = String(keyData)
                val base64Data = pemString
                    .replace("-----BEGIN PRIVATE KEY-----", "")
                    .replace("-----END PRIVATE KEY-----", "")
                    .replace("\n", "")
                val keyFactory = KeyFactory.getInstance("EC")
                val privateKey = keyFactory.generatePrivate(PKCS8EncodedKeySpec(Base64.getDecoder().decode(base64Data)))
                convertToX963(privateKey)
            }
            PrivateKeyType.X963_ENCODED_P256 -> keyData
            PrivateKeyType.SECURE_ENCLAVE_P256 -> {
                val keyStore = KeyStore.getInstance("AndroidKeyStore")
                keyStore.load(null)
                val privateKey = keyStore.getKey("key_alias", null) as PrivateKey
                convertToX963(privateKey)
            }
        }
    }

    private fun getCrvPrivateKeyX963(crv: ECCurveType): ByteArray {
        val kpg = KeyPairGenerator.getInstance("EC")
        val curveName = when (crv) {
            ECCurveType.P256 -> "secp256r1"
            ECCurveType.P384 -> "secp384r1"
            ECCurveType.P521 -> "secp521r1"
        }
        kpg.initialize(ECGenParameterSpec(curveName))
        val keyPair = kpg.generateKeyPair()
        return convertToX963(keyPair.private)
    }

    private fun convertToX963(privateKey: PrivateKey): ByteArray {
        val keyFactory = KeyFactory.getInstance("EC")
        val params = keyFactory.getKeySpec(privateKey, PKCS8EncodedKeySpec::class.java)
        val ecParams = AlgorithmParameters.getInstance("EC").apply {
            init(params.encoded)
        }.getParameterSpec(ECParameterSpec::class.java)
        
        val x963Bytes = ByteArray(65) // 1 byte for type + 32 bytes for x + 32 bytes for y
        x963Bytes[0] = 0x04 // uncompressed point
        System.arraycopy(params.encoded, 0, x963Bytes, 1, 64)
        return x963Bytes
    }

    private fun convertFromX963(x963Data: ByteArray): ByteArray {
        val kpg = KeyPairGenerator.getInstance("EC")
        kpg.initialize(ECGenParameterSpec("secp256r1"))
        val keyPair = kpg.generateKeyPair()
        val keyFactory = KeyFactory.getInstance("EC")
        val ecPrivateKeySpec = keyFactory.getKeySpec(keyPair.private, ECPrivateKeySpec::class.java)
        
        val pkcs8Bytes = ByteArray(121) // Standard PKCS8 format size for EC
        pkcs8Bytes[0] = 0x30 // SEQUENCE
        pkcs8Bytes[1] = 0x77 // Length
        pkcs8Bytes[2] = 0x02 // INTEGER
        pkcs8Bytes[3] = 0x01 // Length
        pkcs8Bytes[4] = 0x00 // Version
        System.arraycopy(x963Data, 0, pkcs8Bytes, 5, x963Data.size)
        return pkcs8Bytes
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
