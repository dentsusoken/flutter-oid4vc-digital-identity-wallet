import 'dart:typed_data';

/// The type of wallet flow.
abstract class WalletFlowType {
  WalletFlowType();

  factory WalletFlowType.ble() => WalletFlowTypeBle();

  factory WalletFlowType.openid4vp({required Uint8List data}) => WalletFlowTypeOpenid4vp(data: data);

  factory WalletFlowType.other() => WalletFlowTypeOther();

  bool get isProximity => false;
  Uint8List? get data => null;
}

/// The type of wallet flow for BLE.
final class WalletFlowTypeBle extends WalletFlowType {
  WalletFlowTypeBle();

  @override
  bool get isProximity => true;
}

/// The type of wallet flow for OpenID4VP.
final class WalletFlowTypeOpenid4vp extends WalletFlowType {
  WalletFlowTypeOpenid4vp({required this.data});

  @override
  final Uint8List data;
}

/// The type of wallet flow for other.
final class WalletFlowTypeOther extends WalletFlowType {
  WalletFlowTypeOther();
}
