import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/tw_presentation_exchange.dart';
import 'package:tw_siop_openid4vp/tw_siop_openid4vp.dart';
import 'package:uuid/uuid.dart';

part 'presentation_log.freezed.dart';
part 'presentation_log.g.dart';

@freezed
abstract class PresentationLog with _$PresentationLog {
  factory PresentationLog({
    required String id,
    String? verifierName,
    String? verifierURL,
    required DateTime submitAt,
    required bool isSuccess,
    String? idToken,
    String? vpToken,
    PresentationSubmission? presentationSubmission,
    String? message,
  }) = _PresentationLog;

  PresentationLog._();

  factory PresentationLog.fromJson(Map<String, dynamic> json) => _$PresentationLogFromJson(json);

  factory PresentationLog.create({
    String? id,
    String? verifierName,
    String? verifierURL,
    required DateTime submitAt,
    required bool isSuccess,
    required ClientConsent consent,
  }) {
    String? message;
    String? idToken;
    String? vpToken;
    PresentationSubmission? presentationSubmission;

    switch (consent) {
      case ClientConsentIdToken():
        idToken = consent.idToken;
      case ClientContentVpToken():
        vpToken = consent.vpToken;
        presentationSubmission = consent.presentationSubmission;
      case ClientConsentIdAndVpToken():
        idToken = consent.idToken;
        vpToken = consent.vpToken;
        presentationSubmission = consent.presentationSubmission;
      case ClientConsentNegative():
        message = consent.message;
    }

    return PresentationLog(
      id: id ?? const Uuid().v4(),
      verifierName: verifierName,
      verifierURL: verifierURL,
      submitAt: submitAt,
      isSuccess: isSuccess,
      idToken: idToken,
      vpToken: vpToken,
      presentationSubmission: presentationSubmission,
      message: message,
    );
  }
}
