// import 'dart:typed_data';
// import 'package:tw_iso18013_data_model/tw_iso18013_data_model.dart';
// import 'package:tw_iso18013_data_transfer/tw_iso18013_data_transfer.dart';
// import 'package:uuid/uuid.dart';

// typedef RequestItems = Map<String, Map<String, List<RequestItem>>>;

// /// Helper methods for mDoc operations
// class MdocHelpers {
//   /// Initialize data from parameters
//   static ({
//     Map<String, IssuerSigned>? docs,
//     Map<String, CoseKeyPrivate>? devicePrivateKeys,
//     List<dynamic>? iaca,
//     DeviceAuthMethod dauthMethod,
//   })?
//   initializeData(Map<String, dynamic> parameters) {
//     Map<String, IssuerSigned>? docs;
//     Map<String, CoseKeyPrivate>? devicePrivateKeys;
//     List<dynamic>? iaca;
//     var deviceAuthMethod = DeviceAuthMethod.deviceMac;

//     if (parameters[InitializeKeys.documentJsonData.name] != null) {
//       // Load JSON sample data, deprecated
//       final jsonDataList = parameters[InitializeKeys.documentJsonData.name] as List<Uint8List>;
//       final sampleData =
//           jsonDataList.map((data) => SignUpResponse.fromJson(data)).where((response) => response != null).toList();

//       final randomIds = List.generate(jsonDataList.length, (_) => const Uuid().v4());

//       docs = Map.fromEntries(
//         sampleData.asMap().entries.map(
//           (entry) => MapEntry(randomIds[entry.key], entry.value.deviceResponse?.documents?.first.issuerSigned),
//         ),
//       );

//       devicePrivateKeys = Map.fromEntries(
//         sampleData.asMap().entries.map((entry) => MapEntry(randomIds[entry.key], entry.value.devicePrivateKey)),
//       );
//     } else if (parameters[InitializeKeys.documentSignupIssuerSignedObj.name] != null &&
//         parameters[InitializeKeys.devicePrivateKeyObj.name] != null) {
//       docs = parameters[InitializeKeys.documentSignupIssuerSignedObj.name] as Map<String, IssuerSigned>;
//       devicePrivateKeys = parameters[InitializeKeys.devicePrivateKeyObj.name] as Map<String, CoseKeyPrivate>;
//     } else if (parameters[InitializeKeys.documentSignupIssuerSignedData.name] != null &&
//         parameters[InitializeKeys.devicePrivateKeyData.name] != null) {
//       final issuerSignedData = parameters[InitializeKeys.documentSignupIssuerSignedData.name] as Map<String, Uint8List>;
//       final privateKeyData = parameters[InitializeKeys.devicePrivateKeyData.name] as Map<String, Uint8List>;

//       // TODO: Implement data conversion from raw bytes to objects
//       docs = {};
//       devicePrivateKeys = {};
//     }

//     return (docs: docs, devicePrivateKeys: devicePrivateKeys, iaca: iaca, dauthMethod: deviceAuthMethod);
//   }
// }
