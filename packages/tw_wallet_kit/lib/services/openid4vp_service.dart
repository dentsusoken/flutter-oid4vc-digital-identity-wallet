import 'dart:typed_data';

import 'package:tw_iso18013_data_transfer/user_request_info.dart';
import 'package:tw_wallet_kit/services/presentation_service.dart';
import 'package:tw_wallet_kit/services/wallet_flow_type.dart';

class OpenId4VpService extends PresentationService {
  OpenId4VpService({required this.qrCode});

  final Uint8List qrCode;

  @override
  WalletFlowType get flowType => WalletFlowType.openid4vp(data: qrCode);

  @override
  Future<UserRequestInfo> receiveRequest() {
    // TODO(Maku): implement receiveRequest
    throw UnimplementedError();
  }

  @override
  Future<void> sendResponse({
    required bool userAccepted,
    required PresentationRequestItems itemsToSend,
    PresentationServiceCallback? callback,
  }) {
    // TODO(Maku): implement sendResponse
    throw UnimplementedError();
  }

  @override
  String? startQrEngagement() {
    // TODO(Maku): implement startQrEngagement
    throw UnimplementedError();
  }
}
