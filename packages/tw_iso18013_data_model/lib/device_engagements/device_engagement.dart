import 'dart:typed_data';

import 'package:cbor/cbor.dart';
import 'package:tw_crypto/tw_crypto.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:tw_iso18013_data_model/device_engagements/cose_key_private.dart';
import 'package:tw_iso18013_data_model/device_engagements/device_retrieval_method.dart';
import 'package:tw_iso18013_data_model/device_engagements/origin_info_website.dart';
import 'package:tw_iso18013_data_model/device_engagements/security.dart';
import 'package:tw_iso18013_data_model/device_engagements/server_retrieval_options.dart';

class DeviceEngagement extends CborEncodable {
  DeviceEngagement({
    this.version = versionImpl,
    required this.security,
    this.originInfos,
    this.deviceRetrievalMethods,
    this.serverRetrievalOptions,
    this.rfus,
    this.d,
    this.seKeyId,
    this.qrCoded,
  });

  static Future<DeviceEngagement> fromParameters({
    bool? isBleServer,
    ECCurveType crv = ECCurveType.p256,
    List<String>? rfus,
  }) async {
    final deviceRetrievalMethods =
        (isBleServer ?? false)
            ? <DeviceRetrievalMethod>[
              DeviceRetrievalMethod.ble(isBleServer: true, uuid: DeviceRetrievalMethod.getRandomBleUuid()),
            ]
            : null;

    final pk = await CoseKeyPrivate.fromCrv(crv);

    return DeviceEngagement(
      security: Security(deviceKey: pk.key),
      deviceRetrievalMethods: deviceRetrievalMethods,
      rfus: rfus,
    );
  }

  final String version;
  final Security security;
  final List<OriginInfoWebsite>? originInfos;
  final List<DeviceRetrievalMethod>? deviceRetrievalMethods;
  final ServerRetrievalOptions? serverRetrievalOptions;
  final List<String>? rfus;
  final Uint8List? d;
  final Uint8List? seKeyId;
  final Uint8List? qrCoded;

  static const versionImpl = '1.0';

  CoseKeyPrivate? get privateKey {
    if (seKeyId != null) {
      return CoseKeyPrivate.fromKeys(
        publicKeyX963Data: security.deviceKey.getX963Representation(),
        secureEnclaveKeyID: seKeyId!,
      );
    }

    if (d != null) {
      return CoseKeyPrivate(key: security.deviceKey, d: d!);
    }

    return null;
  }

  bool? get isBleServer => deviceRetrievalMethods?.any((m) => m is DeviceRetrievalMethodBle && m.isBleServer) ?? false;

  String? get bleUuid {
    if (deviceRetrievalMethods == null) {
      return null;
    }

    for (final method in deviceRetrievalMethods!) {
      if (method is DeviceRetrievalMethodBle) {
        return method.uuid;
      }
    }

    return null;
  }

  static DeviceEngagement? fromData(Uint8List data) {
    final cbor = cborDecode(data);
    return fromCBOR(cbor);
  }

  static DeviceEngagement? fromCBOR(CborValue cbor) {
    if (cbor is! CborMap) {
      return null;
    }

    final version = cbor[const CborSmallInt(0)];
    if (version is! CborString) {
      return null;
    }

    final security = cbor[const CborSmallInt(1)];
    if (security is! CborMap) {
      return null;
    }

    final deviceRetrievalMethods = cbor[const CborSmallInt(2)];
    if (deviceRetrievalMethods is! CborList) {
      return null;
    }

    final serverRetrievalOptions = cbor[const CborSmallInt(3)];
    if (serverRetrievalOptions is! CborMap) {
      return null;
    }

    final originInfos = cbor[const CborSmallInt(4)];
    if (originInfos is! CborList) {
      return null;
    }

    final rfus = cbor[const CborSmallInt(5)];
    if (rfus is! CborList) {
      return null;
    }

    final s = Security.fromCBOR(security);
    if (s == null) {
      return null;
    }

    return DeviceEngagement(
      version: version.toString(),
      security: s,
      deviceRetrievalMethods:
          deviceRetrievalMethods
              .map((e) => DeviceRetrievalMethod.fromCBOR(e))
              .whereType<DeviceRetrievalMethod>()
              .toList(),
      serverRetrievalOptions: ServerRetrievalOptions.fromCBOR(serverRetrievalOptions),
      originInfos: originInfos.map((e) => OriginInfoWebsite.fromCBOR(e)).whereType<OriginInfoWebsite>().toList(),
      rfus: rfus.map((e) => e.toString()).toList(),
    );
  }

  @override
  CborValue toCBOR() {
    return CborMap({
      const CborSmallInt(0): CborString(version),
      const CborSmallInt(1): security.toCBOR(),
      if (deviceRetrievalMethods != null)
        const CborSmallInt(2): CborList.of(deviceRetrievalMethods!.map((e) => e.toCBOR())),
      if (serverRetrievalOptions != null) const CborSmallInt(3): serverRetrievalOptions!.toCBOR(),
      if (originInfos != null) const CborSmallInt(4): CborList.of(originInfos!.map((e) => e.toCBOR())),
      if (rfus != null) const CborSmallInt(5): CborList.of(rfus!.map((e) => CborString(e))),
    });
  }
}
