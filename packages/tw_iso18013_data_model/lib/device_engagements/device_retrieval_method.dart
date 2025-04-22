import 'package:cbor/cbor.dart';
import 'package:tw_iso18013_data_model/cbor_encodable.dart';
import 'package:uuid/uuid.dart';

enum DeviceRetrievalMethodType {
  qr(1),
  nfc(2),
  ble(3);

  const DeviceRetrievalMethodType(this.value);

  factory DeviceRetrievalMethodType.fromValue(int value) {
    switch (value) {
      case 1:
        return qr;
      case 2:
        return nfc;
      case 3:
        return ble;
      default:
        throw ArgumentError('Unknown DeviceRetrievalMethodType value: $value');
    }
  }

  final int value;
}

abstract class DeviceRetrievalMethod extends CborEncodable {
  DeviceRetrievalMethod();

  factory DeviceRetrievalMethod.qr() => DeviceRetrievalMethodQr();
  factory DeviceRetrievalMethod.nfc({required int maxLenCommand, required int maxLenResponse}) =>
      DeviceRetrievalMethodNfc(maxLenCommand: maxLenCommand, maxLenResponse: maxLenResponse);
  factory DeviceRetrievalMethod.ble({required bool isBleServer, required String uuid}) =>
      DeviceRetrievalMethodBle(isBleServer: isBleServer, uuid: uuid);

  DeviceRetrievalMethodType get type;

  static const version = 1;

  static final baseUuidSuffixService = '-0000-1000-8000-00805F9B34FB'.replaceAll('-', '');

  static String getRandomBleUuid() {
    final uuid = const Uuid().v4().replaceAll('-', '');
    final extractedUuid = uuid.substring(4, 8);
    return '0000$extractedUuid$baseUuidSuffixService';
  }

  static DeviceRetrievalMethod? fromCBOR(CborValue cbor) {
    if (cbor is! CborList || cbor.length < 2) {
      return null;
    }

    final type = cbor[0];
    if (type is! CborSmallInt) {
      return null;
    }

    final version = cbor[1];
    if (version is! CborSmallInt) {
      return null;
    }

    return switch (DeviceRetrievalMethodType.fromValue(type.value)) {
      DeviceRetrievalMethodType.qr => DeviceRetrievalMethodQr(),
      DeviceRetrievalMethodType.nfc => DeviceRetrievalMethodNfc.fromCBOR(cbor),
      DeviceRetrievalMethodType.ble => DeviceRetrievalMethodBle.fromCBOR(cbor),
    };
  }

  CborList appendTypeAndVersion({CborMap? options}) {
    final cborArr = CborList([CborSmallInt(type.value), const CborSmallInt(version)]);
    if (options != null) {
      cborArr.add(options);
    }
    return cborArr;
  }
}

class DeviceRetrievalMethodQr extends DeviceRetrievalMethod {
  @override
  DeviceRetrievalMethodType get type => DeviceRetrievalMethodType.qr;
  @override
  CborValue toCBOR() {
    return appendTypeAndVersion();
  }
}

class DeviceRetrievalMethodNfc extends DeviceRetrievalMethod {
  DeviceRetrievalMethodNfc({required this.maxLenCommand, required this.maxLenResponse});

  final int maxLenCommand;
  final int maxLenResponse;

  @override
  DeviceRetrievalMethodType get type => DeviceRetrievalMethodType.nfc;

  static DeviceRetrievalMethodNfc? fromCBOR(CborValue cbor) {
    if (cbor is! CborList || cbor.length < 3) {
      return null;
    }

    final options = cbor[2];
    if (options is! CborMap) {
      return null;
    }

    final maxLenCommand = options[const CborSmallInt(0)];
    if (maxLenCommand is! CborSmallInt) {
      return null;
    }

    final maxLenResponse = options[const CborSmallInt(1)];
    if (maxLenResponse is! CborSmallInt) {
      return null;
    }

    return DeviceRetrievalMethodNfc(maxLenCommand: maxLenCommand.value, maxLenResponse: maxLenResponse.value);
  }

  @override
  CborValue toCBOR() {
    final options = CborMap({CborValue(0): CborSmallInt(maxLenCommand), CborValue(1): CborSmallInt(maxLenResponse)});
    return appendTypeAndVersion(options: options);
  }
}

class DeviceRetrievalMethodBle extends DeviceRetrievalMethod {
  DeviceRetrievalMethodBle({required this.isBleServer, required this.uuid});

  final bool isBleServer;
  final String uuid;

  @override
  DeviceRetrievalMethodType get type => DeviceRetrievalMethodType.ble;

  static DeviceRetrievalMethodBle? fromCBOR(CborValue cbor) {
    if (cbor is! CborList || cbor.length < 3) {
      return null;
    }

    final options = cbor[2];
    if (options is! CborMap) {
      return null;
    }

    final isBleServer = options[const CborSmallInt(0)];
    if (isBleServer is! CborBool) {
      return null;
    }

    final uuid = options[CborSmallInt(isBleServer.value ? 10 : 11)];
    if (uuid is! CborString) {
      return null;
    }

    return DeviceRetrievalMethodBle(isBleServer: isBleServer.value, uuid: uuid.toString());
  }

  @override
  CborValue toCBOR() {
    final options = CborMap({
      CborValue(0): CborBool(isBleServer),
      CborValue(1): CborBool(!isBleServer),
      CborSmallInt(isBleServer ? 10 : 11): CborString(uuid),
    });
    return appendTypeAndVersion(options: options);
  }
}
