import Flutter
import UIKit
import CryptoKit

enum PrivateKeyType: String {
  case derEncodedP256 = "dep2"
  case pemStringDataP256 = "pep2"
  case x963EncodedP256 = "x9p2"
  case secureEnclaveP256 = "sep2"
}

public enum ECCurveType: UInt64 {
  case p256 = 1
  case p384 = 2
  case p521 = 3
}

public class TwCryptoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.dentsusoken.TrustedWeb.DigitalWallet/tw_crypto", binaryMessenger: registrar.messenger())
    let instance = TwCryptoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard let args = call.arguments as? [String: Any] else {
      result(FlutterError(code: "IllegalArgumentError", message: "Invalid arguments", details: nil))
      return
    }

    do {
      switch call.method {
        case "createPrivateKey":
            if let keyTypeStr = args["keyType"] as? String, 
              let keyType = PrivateKeyType(rawValue: keyTypeStr) {
                let ret = try createPrivateKey(keyType: keyType)
                let data = FlutterStandardTypedData(bytes: ret)
                result(data)
            } else {
                result(FlutterError(code: "IllegalArgumentError", message: "Invalid arguments", details: args))
            }
        case "getPublicKeyPEM":
          if let keyTypeStr = args["keyType"] as? String, 
              let keyType = PrivateKeyType(rawValue: keyTypeStr), 
              let keyData = args["keyData"] as? FlutterStandardTypedData {
                let ret = try getPublicKeyPEM(keyType: keyType, keyData: keyData.data)
                result(ret)
            } else {
                result(FlutterError(code: "IllegalArgumentError", message: "Invalid arguments", details: args))
            }
        case "getPrivateKeyX963":
            if let keyTypeStr = args["keyType"] as? String, 
              let keyType = PrivateKeyType(rawValue: keyTypeStr), 
              let keyData = args["keyData"] as? FlutterStandardTypedData {
                let ret = try getPrivateKeyX963(keyType: keyType, keyData: keyData.data)
                let data = FlutterStandardTypedData(bytes: ret)
                result(data)
            } else {
                result(FlutterError(code: "IllegalArgumentError", message: "Invalid arguments", details: args))
            }
        case "getCrvPrivateKeyX963":
            if let crvStr = args["crv"] as? UInt64, let crv = ECCurveType(rawValue: crvStr) {
                let ret = try getCrvPrivateKeyX963(crv: crv)
                let data = FlutterStandardTypedData(bytes: ret)
                result(data)
            } else {
                result(FlutterError(code: "IllegalArgumentError", message: "Invalid arguments", details: args))
            }
        default:
          result(FlutterMethodNotImplemented)
        }
    } catch {
      result(FlutterError(code: "InternalError", message: error.localizedDescription, details: nil))
    }
  }

  private func createPrivateKey(keyType: PrivateKeyType) throws -> Data {
    switch keyType {
    case .derEncodedP256:
      let p256 = P256.KeyAgreement.PrivateKey()
      return p256.derRepresentation
    case .pemStringDataP256:
      let p256 = P256.KeyAgreement.PrivateKey()
      return p256.pemRepresentation.data(using: .utf8)!
    case .x963EncodedP256:
      let p256 = P256.KeyAgreement.PrivateKey()
      return p256.x963Representation
    case .secureEnclaveP256:
      let secureEnclaveKey = try SecureEnclave.P256.KeyAgreement.PrivateKey() 
      return secureEnclaveKey.dataRepresentation
    }
  }

  private func getPrivateKeyX963(keyType: PrivateKeyType, keyData: Data) throws -> Data {
    switch keyType {
    case .derEncodedP256:
      let p256 = try P256.KeyAgreement.PrivateKey(derRepresentation: keyData)
      return p256.x963Representation
    case .x963EncodedP256:
      let p256 = try P256.KeyAgreement.PrivateKey(x963Representation: keyData)
      return p256.x963Representation
    case .pemStringDataP256:
      let p256 = try P256.KeyAgreement.PrivateKey(pemRepresentation: String(data: keyData, encoding: .utf8)!)
      return p256.x963Representation
    case .secureEnclaveP256:
      let se256 = try SecureEnclave.P256.KeyAgreement.PrivateKey(dataRepresentation: keyData)
      return se256.publicKey.x963Representation
    }
  }

  private func getPublicKeyPEM(keyType: PrivateKeyType, keyData: Data) throws -> String {
    switch keyType {
    case .derEncodedP256:
      let p256 = try P256.KeyAgreement.PrivateKey(derRepresentation: keyData)
      return p256.publicKey.pemRepresentation
    case .pemStringDataP256:
      let p256 = try P256.KeyAgreement.PrivateKey(pemRepresentation: String(data: keyData, encoding: .utf8)!)
      return p256.publicKey.pemRepresentation
    case .x963EncodedP256:
      let p256 = try P256.KeyAgreement.PrivateKey(x963Representation: keyData)
      return p256.publicKey.pemRepresentation
    case .secureEnclaveP256:
      let se256 = try SecureEnclave.P256.KeyAgreement.PrivateKey(dataRepresentation: keyData)
      return se256.publicKey.pemRepresentation
    }
  }

  private func getCrvPrivateKeyX963(crv: ECCurveType) throws -> Data {
    switch crv {
    case .p256:
      let key = P256.KeyAgreement.PrivateKey(compactRepresentable: false)
      return key.x963Representation
    case .p384:
      let key = P384.KeyAgreement.PrivateKey(compactRepresentable: false)
      return key.x963Representation
    case .p521:
      let key = P521.KeyAgreement.PrivateKey(compactRepresentable: false)
      return key.x963Representation
    }
  }
}
