import 'package:tw_presentation_exchange/tw_presentation_exchange.dart';

/// Consent. Holder decided to respond to a request
abstract class ClientConsent {
  factory ClientConsent.idToken(String idToken) {
    return ClientConsentIdToken(idToken: idToken);
  }

  factory ClientConsent.vpToken({required String vpToken, required PresentationSubmission presentationSubmission}) {
    return ClientContentVpToken(vpToken: vpToken, presentationSubmission: presentationSubmission);
  }

  factory ClientConsent.idAndVPToken({
    required String idToken,
    required String vpToken,
    required PresentationSubmission presentationSubmission,
  }) {
    return ClientConsentIdAndVpToken(
      idToken: idToken,
      vpToken: vpToken,
      presentationSubmission: presentationSubmission,
    );
  }

  factory ClientConsent.negative({required String message}) {
    return ClientConsentNegative(message: message);
  }
}

/// In response to a SiopAuthentication, Holder/Wallet provides a JWT
class ClientConsentIdToken implements ClientConsent {
  ClientConsentIdToken({required this.idToken});

  final String idToken;
}

/// In response to an OpenId4VPAuthorization where the wallet has claims that fulfill Verifier's presentation definition
class ClientContentVpToken implements ClientConsent {
  ClientContentVpToken({required this.vpToken, required this.presentationSubmission});

  final String vpToken;
  final PresentationSubmission presentationSubmission;
}

/// In response to a SiopOpenId4VPAuthentication
class ClientConsentIdAndVpToken implements ClientConsent {
  ClientConsentIdAndVpToken({required this.idToken, required this.vpToken, required this.presentationSubmission});

  final String idToken;
  final String vpToken;
  final PresentationSubmission presentationSubmission;
}

/// No consensus. Holder decided to reject the request
class ClientConsentNegative implements ClientConsent {
  ClientConsentNegative({required this.message});

  final String message;
}
