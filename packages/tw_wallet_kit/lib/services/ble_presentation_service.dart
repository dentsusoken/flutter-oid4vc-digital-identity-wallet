import 'package:tw_iso18013_data_transfer/tw_iso18013_data_transfer.dart';
import 'package:tw_wallet_kit/services/presentation_service.dart';
import 'package:tw_wallet_kit/services/wallet_flow_type.dart';

class BlePresentationService extends PresentationService {
  @override
  WalletFlowType get flowType => WalletFlowType.ble();

  TransferStatus get status => TransferStatus.error;

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
