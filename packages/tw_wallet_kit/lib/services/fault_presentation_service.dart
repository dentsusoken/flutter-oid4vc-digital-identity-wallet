import 'package:tw_iso18013_data_transfer/tw_iso18013_data_transfer.dart';

import 'package:tw_wallet_kit/services/presentation_service.dart';
import 'package:tw_wallet_kit/services/wallet_flow_type.dart';

class FaultPresentationService implements PresentationService {
  FaultPresentationService(this.exception);

  factory FaultPresentationService.fromMessage(String message) {
    return FaultPresentationService(Exception(message));
  }

  final Exception exception;

  @override
  WalletFlowType get flowType => WalletFlowType.other();

  TransferStatus get status => TransferStatus.error;

  @override
  Future<UserRequestInfo> receiveRequest() {
    throw exception;
  }

  @override
  Future<void> sendResponse({
    required bool userAccepted,
    required PresentationRequestItems itemsToSend,
    PresentationServiceCallback? callback,
  }) {
    throw exception;
  }

  @override
  String? startQrEngagement() {
    throw exception;
  }
}
