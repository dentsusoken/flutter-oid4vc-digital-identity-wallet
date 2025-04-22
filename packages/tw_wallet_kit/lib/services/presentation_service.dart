import 'package:tw_iso18013_data_transfer/tw_iso18013_data_transfer.dart';
import 'package:tw_wallet_kit/services/wallet_flow_type.dart';

typedef PresentationServiceCallback = void Function(String? url);
typedef PresentationRequestItems = Map<String, Map<String, List<String>>>;

abstract class PresentationService {
  WalletFlowType get flowType;

  /// Generate a QR code to be shown to verifier (optional)
  String? startQrEngagement();

  /// Receive request from verifier
  Future<UserRequestInfo> receiveRequest();

  /// Send response to verifier
  Future<void> sendResponse({
    required bool userAccepted,
    required PresentationRequestItems itemsToSend,
    PresentationServiceCallback? callback,
  });
}
