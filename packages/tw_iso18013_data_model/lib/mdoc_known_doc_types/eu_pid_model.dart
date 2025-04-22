// import 'package:cbor/cbor.dart';
// import 'package:tw_iso18013_data_model/mdoc_known_doc_types/mdoc_decodable.dart';
// import 'package:tw_iso18013_data_model/mdoc_known_doc_types/name_image.dart';
// import 'package:tw_iso18013_data_model/mdoc_known_doc_types/name_value.dart';
// import 'package:tw_iso18013_data_model/types.dart';
// import 'package:uuid/uuid.dart';

// import '../device_engagements/device_engagements.dart';
// import '../mdoc_responses/mdoc_response.dart';

// class EuPidModel implements MdocDecodable {
//   EuPidModel({
//     required this.issuerSigned,
//     required this.devicePrivateKey,
//     required this.id,
//     required this.createdAt,
//     required this.docType,
//     required this.nameSpaces,
//     required this.displayName,
//     required this.modifiedAt,
//     required this.statusDescription,
//     required this.ageOverXX,
//     required this.displayStrings,
//     required this.displayImages,
//     required this.mandatoryElementKeys,
//     this.familyName,
//     this.givenName,
//     this.birthDate,
//     this.familyNameBirth,
//     this.givenNameBirth,
//     this.birthPlace,
//     this.birthCountry,
//     this.birthState,
//     this.birthCity,
//     this.residentAddress,
//     this.residentCity,
//     this.residentPostalCode,
//     this.residentState,
//     this.residentCountry,
//     this.residentStreet,
//     this.residentHouseNumber,
//   });

//   @override
//   final IssuerSigned? issuerSigned;
//   @override
//   final CoseKeyPrivate? devicePrivateKey;
//   @override
//   final String id;
//   @override
//   final DateTime createdAt;
//   @override
//   final String docType;
//   @override
//   final List<NameSpace>? nameSpaces;
//   @override
//   final String? displayName;
//   @override
//   final DateTime? modifiedAt;
//   @override
//   final String? statusDescription;
//   @override
//   final Map<int, bool> ageOverXX;
//   @override
//   final List<NameValue> displayStrings;
//   @override
//   final List<NameImage> displayImages;
//   @override
//   final List<DataElementIdentifier> mandatoryElementKeys;

//   final String? familyName;
//   final String? givenName;
//   final String? birthDate;
//   final String? familyNameBirth;
//   final String? givenNameBirth;
//   final String? birthPlace;
//   final String? birthCountry;
//   final String? birthState;
//   final String? birthCity;
//   final String? residentAddress;
//   final String? residentCity;
//   final String? residentPostalCode;
//   final String? residentState;
//   final String? residentCountry;
//   final String? residentStreet;
//   final String? residentHouseNumber;
//   final int? gender;
//   final String? nationality;
//   final int? ageInYears;
//   final int? ageBirthYear;
//   final String? expiryDate;
//   final String? issuingAuthority;
//   final String? issuanceDate;
//   final String? documentNumber;
//   final String? administrativeNumber;
//   final String? issuingCountry;
//   final String? issuingJurisdiction;

//   // static const mandatoryElementKeys = <String>[
//   //   'family_name',
//   //   'given_name',
//   //   'birth_date'
//   // ];

//   static const String euPidDocType = 'eu.europa.ec.eudi.pid.1';
//   static const pidMandatoryElementKeys = <String>[
//     'age_over_18',
//     // ...mandatoryElementKeys,
//   ];

//   @override
//   Map<String, dynamic> toJson() {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
// }

// enum Keys {
//   familyName,
//   givenName,
//   birthDate,
//   familyNameBirth,
//   givenNameBirth,
//   birthPlace,
//   birthCountry,
//   birthState,
//   birthCity,
//   residentAddress,
//   residentCity,
//   residentPostalCode,
//   residentState,
//   residentCountry,
//   residentStreet,
//   residentHouseNumber,
//   gender,
//   nationality,
//   ageInYears,
//   ageBirthYear,
//   expiryDate,
//   issuingAuthority,
//   issuanceDate,
//   documentNumber,
//   administrativeNumber,
//   issuingCountry,
//   issuingJurisdiction;
// }
