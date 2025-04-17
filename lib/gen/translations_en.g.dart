///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';

import 'package:intl/intl.dart';
import 'package:oid4vc_digital_identity_wallet/gen/translations.g.dart';
import 'package:slang/generated.dart';

// Path: <root>
class TranslationsEn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
    : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
      $meta = TranslationMetadata(
        locale: AppLocale.en,
        overrides: overrides ?? {},
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      ),
      super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsEn _root = this; // ignore: unused_field

  // Translations
  @override
  String get aamvaSex => 'AAMVA Sex';
  @override
  String get addDoc => 'ADD DOC';
  @override
  String get addDocumentSubtitle => 'Select a document to add in your EUDI Wallet';
  @override
  String get addDocumentTitle => 'Add Document';
  @override
  String get administrativeNumber => 'Administrative number';
  @override
  String get ageBirthYear => 'In what year were you born?';
  @override
  String get ageInYears => 'How old are you (in years)?';
  @override
  String get ageOver13 => 'Age over 13?';
  @override
  String get ageOver15 => 'Age over 15?';
  @override
  String get ageOver16 => 'Age over 16?';
  @override
  String get ageOver18 => 'Age over 18?';
  @override
  String get ageOver21 => 'Age over 21?';
  @override
  String get ageOver60 => 'Age over 60?';
  @override
  String get ageOver65 => 'Age over 65?';
  @override
  String get ageOver68 => 'Age over 68?';
  @override
  String get ageVerification => 'Age Verification';
  @override
  String get biometryOpenSettings => 'Go to settings';
  @override
  String get birthCity => 'City of birth';
  @override
  String get birthCountry => 'Country of birth';
  @override
  String get birthDate => 'Date of birth';
  @override
  String get birthPlace => 'Place of birth';
  @override
  String get birthState => 'State of birth';
  @override
  String get bleDisabledModalButton => 'ENABLE';
  @override
  String get bleDisabledModalContent => 'Enable bluetooth to share your information using the QR/TAP option';
  @override
  String get bleDisabledModalTitle => 'Enable bluetooth?';
  @override
  String get cameraError => 'Camera permission not provided\nOpen App Settings';
  @override
  String get cancelButton => 'CANCEL';
  @override
  String get cancelIssuanceSheetCaption => 'Cancel will redirect you back to the documents list with no new documents';
  @override
  String get cancelIssuanceSheetContinue => 'CONTINUE ISSUANCE';
  @override
  String get cancelIssuanceSheetTitle => 'Cancel issuance process?';
  @override
  String get cancelShareSheetCaption =>
      'Cancel will redirect you back to the dashboard without sharing any information';
  @override
  String get cancelShareSheetContinue => 'CONTINUE SHARING';
  @override
  String get cancelShareSheetTitle => 'Cancel information sharing?';
  @override
  String get changeQuickPinOption => 'Change quick pin';
  @override
  String credentialOfferPartialSuccessCaption({required Object fromString, required Object exceptString}) =>
      'Your documents from ${fromString} have been successfully issued except ${exceptString}';
  @override
  String get credentialOfferSuccessButton => 'CONTINUE';
  @override
  String credentialOfferSuccessCaption({required Object fromString}) =>
      'Your documents from ${fromString} have been successfully issued.';
  @override
  String get dateOfExpiry => 'Date of expiry';
  @override
  String get dateOfIssue => 'Date of issue';
  @override
  String get dHSCompliance => 'DHS Compliance';
  @override
  String get documentNumber => 'Document number';
  @override
  String get drivingPrivileges => 'Categories of vehicles';
  @override
  String get eDLCredential => 'EDL Credential';
  @override
  String errorUnableFetchDocument({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(
    n,
    one: 'Unable to fetch document',
    other: 'Unable to fetch documents',
  );
  @override
  String get expired => 'Expired';
  @override
  String get expiry => 'expiry';
  @override
  String get expiryDate => 'Date of expiry';
  @override
  String get eyeColor => 'Eye color';
  @override
  String get familyName => 'Family Name';
  @override
  String get familyNameBirth => 'Family Name at Birth';
  @override
  String get familyNameNationalCharacter => 'Family name in national characters';
  @override
  String get faqTitle => 'FAQ';
  @override
  String get firstNameBirth => 'First Name at Birth';
  @override
  String get gender => 'Gender';
  @override
  String get genericErrorDescription => 'If the issue persists, please contact customer support';
  @override
  String get genericErrorTitle => 'Houston we have a problem!';
  @override
  String get givenName => 'Given Name';
  @override
  String get givenNameBirth => 'Given Name at Birth';
  @override
  String get givenNameNationalCharacter => 'Given name in national characters';
  @override
  String get hairColor => 'Hair color';
  @override
  String get height => 'Height (cm)';
  @override
  String get incompleteRequestDataSelecting => 'Your selection of data to be shared may impact the service';
  @override
  String get invalidQuickPin => 'Invalid quick pin';
  @override
  String get issuanceDate => 'Date of issuance';
  @override
  String get issuanceDetailsContinueButton => 'CONTINUE';
  @override
  String get issuanceDetailsDocDeletionCaption =>
      'Use your “National System” credentials to add the document in your EUDI Wallet';
  @override
  String issuanceDetailsDocDeletionTitle({required Object documentString}) => 'Delete ${documentString}';
  @override
  String get issuanceExternalLoadingCaption =>
      'Use your “National System” credentials to add the document in your EUDI Wallet';
  @override
  String issuanceExternalLoadingTitle({required Object documentString}) => 'Add ${documentString}';
  @override
  String get issuanceScanQr => 'SCAN QR';
  @override
  String issuanceSuccessCaption({required Object documentString}) =>
      'You can now add your ${documentString} in your EUDI Wallet';
  @override
  String get issuanceSuccessNextButton => 'NEXT';
  @override
  String get issuanceSuccessTitle => 'Success';
  @override
  String get issueButton => 'ISSUE';
  @override
  String get issueDate => 'Date of issue';
  @override
  String get issuedAt => 'Issued at';
  @override
  String get issuingAuthority => 'Issuing authority';
  @override
  String get issuingCountry => 'Issuing country';
  @override
  String get issuingJurisdiction => 'Issuing jurisdiction';
  @override
  String get loadSampleData => 'Load Sample Data';
  @override
  String get loginButton => 'LOGIN';
  @override
  String get loginCaption => 'Use your biometrics to login';
  @override
  String get loginCaptionQuickPinOnly => 'Type your quick pin to login';
  @override
  String get loginTitle => 'Login';
  @override
  String get mdl => 'Driving License';
  @override
  String get missingPid => 'Wallet needs to be activated first with a National ID';
  @override
  String get moreOptions => 'More options';
  @override
  String get nationality => 'Nationality';
  @override
  String get no => 'no';
  @override
  String get okButton => 'OK';
  @override
  String onExpired({required Object expiredString}) => 'on ${expiredString}';
  @override
  String get or => 'Or';
  @override
  String get pid => 'National ID';
  @override
  String get pleaseWait => 'Please wait...';
  @override
  String get portrait => 'Portrait';
  @override
  String get portraitCaptureDate => 'Portrait image timestamp';
  @override
  String get proximityConnectivityTitle => 'Show QR';
  @override
  String get proximityConnectivityCaption => 'Show this QR code to access the necessary information for sharing';
  @override
  String get quickPinConfirmButton => 'CONFIRM';
  @override
  String get quickPinDontMatch => 'Pins do not match';
  @override
  String get quickPinNextButton => 'NEXT';
  @override
  String get quickPinSetStepOneCaption => 'Set a quick pin for future logins';
  @override
  String get quickPinSetStepTwoCaption => 'Re-enter the quick pin';
  @override
  String get quickPinSetSuccess => 'You successfully set the quick pin';
  @override
  String get quickPinSetSuccessButton => 'CONTINUE';
  @override
  String get quickPinSetTitle => 'Welcome to the EUDI Wallet';
  @override
  String get quickPinUpdateCancellationCaption =>
      'Cancel will redirect you back to the home without changing the quick pin';
  @override
  String get quickPinUpdateCancellationContinue => 'CONTINUE';
  @override
  String get quickPinUpdateCancellationTitle => 'Cancel quick pin changing?';
  @override
  String get quickPinUpdateStepOneCaption => 'Type your current pin';
  @override
  String get quickPinUpdateStepThreeCaption => 'Re-enter the quick pin';
  @override
  String get quickPinUpdateStepTwoCaption => 'Set a quick pin for future logins';
  @override
  String get quickPinUpdateSuccess => 'You successfully set the quick pin';
  @override
  String get quickPinUpdateSuccessButton => 'BACK TO HOME';
  @override
  String get quickPinUpdateTitle => 'Change quick pin';
  @override
  String get readFaqsButton => 'READ FAQS';
  @override
  String get registrationId => 'Registration ID';
  @override
  String get requestCredentialOfferCaption => 'Please confirm the issuance of the following';
  @override
  String get requestCredentialOfferNoDocument => 'Unable to fetch and process the credential offer';
  @override
  String requestCredentialOfferTitle({required Object verifierString}) =>
      '${verifierString} wants to issue the following in your wallet';
  @override
  String get requestDataInfoNotice => 'Why we need your data?';
  @override
  String get requestDataNoDocument =>
      'The requested document is not available in your EUDI Wallet. Please contact the authorized issuer for further information.';
  @override
  String get requestDataShareBiometryCaption => 'Use your biometrics to share information';
  @override
  String get requestDataShareButton => 'CONTINUE';
  @override
  String get requestDataShareCaption => 'Please review carefully before sharing your data.';
  @override
  String get requestDataShareQuickPinCaption => 'Type your quick pin to share information';
  @override
  String requestDataShareSuccessTitle({required Object verifierString}) =>
      'You successfully shared information with the ${verifierString}';
  @override
  String requestDataShareTitle({required Object userString}) => '${userString} requests the following';
  @override
  String get requestDataSheetCaption => 'It allows us to verify your identity with the requesting party';
  @override
  String get requestDataVerification => 'Verification Data';
  @override
  String get requestDataVerifiedEntity => 'Trusted Relying Party';
  @override
  String get requestDataVerifiedEntityMessage =>
      'A relying party is considered trusted when it meets predefined criteria for security, data protection, compliance, and responsible data handling. Trust is reinforced through assessments, audits, and certifications.';
  @override
  String get residentAddress => 'Permanent place of residence';
  @override
  String get residentCity => 'Resident city';
  @override
  String get residentCountry => 'Resident country';
  @override
  String get residentHouseNumber => 'Resident house number';
  @override
  String get residentPostalCode => 'Resident postal code';
  @override
  String get residentState => 'Resident state';
  @override
  String get residentStreet => 'Resident street';
  @override
  String get roomNumber => 'Room Number';
  @override
  String get scanQrCode => 'Scan a QR code';
  @override
  String get scannerQrCaption => 'Place the QR code within the frame to start scanning';
  @override
  String get scannerQrTitle => 'Scan QR';
  @override
  String get screenRecordingSecurityWarning => 'The screen is hidden to protect your personal information';
  @override
  String get search => 'Search';
  @override
  String get seatNumber => 'Seat Number';
  @override
  String get sex => 'Sex';
  @override
  String get shareButton => 'SHARE';
  @override
  String get shareDataReviewTitle => 'Please review carefully before sharing your data';
  @override
  String get showQrTap => 'SHOW QR';
  @override
  String get shownAbove => 'Shown Above';
  @override
  String get signatureUsualMark => 'Signature / usual mark';
  @override
  String get success => 'Success';
  @override
  String get tryAgain => 'Try again';
  @override
  String get unDistinguishingSign => 'UN distinguishing sign';
  @override
  String get unableToIssueAndStoreDocuments => 'Something went wrong issuing your document(s)';
  @override
  String get unavailableField => 'Not available';
  @override
  String get unknownIssuer => 'Issuer';
  @override
  String get unknownVerifier => 'Verifier';
  @override
  String get userPseudonym => 'User Pseudonym';
  @override
  String validUntil({required Object dateString}) => 'Valid until\n${dateString}';
  @override
  String get vcType => 'VC Type';
  @override
  String get vehicleCategoryCode => 'Vehicle category code';
  @override
  String get vpHistory => 'VP History';
  @override
  String get vpHistoryTap => 'VP History';
  @override
  String get weight => 'Weight (kg)';
  @override
  String get welcomeBack => 'Welcome back';
  @override
  String get yes => 'yes';
  @override
  late final _TranslationsFormatsEn formats = _TranslationsFormatsEn._(_root);
}

// Path: formats
class _TranslationsFormatsEn extends TranslationsFormatsJa {
  _TranslationsFormatsEn._(TranslationsEn root) : this._root = root, super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'MM/dd/yyyy';
}
