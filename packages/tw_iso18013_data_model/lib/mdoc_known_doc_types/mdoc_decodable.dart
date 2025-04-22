import 'package:tw_iso18013_data_model/document_base.dart';
import 'package:tw_iso18013_data_model/mdoc_known_doc_types/age_attesting.dart';
import 'package:tw_iso18013_data_model/mdoc_known_doc_types/name_image.dart';
import 'package:tw_iso18013_data_model/mdoc_known_doc_types/name_value.dart';
import 'package:tw_iso18013_data_model/types.dart';
import 'package:tw_iso18013_data_model/device_engagements/device_engagements.dart';
import 'package:tw_iso18013_data_model/mdoc_responses/mdoc_response.dart';

abstract class MdocDecodable implements DocumentBase, AgeAttesting {
  IssuerSigned? get issuerSigned;
  CoseKeyPrivate? get devicePrivateKey;
  List<NameSpace>? get nameSpaces;
  List<DataElementIdentifier> get mandatoryElementKeys;
  List<NameValue> get displayStrings;
  List<NameImage> get displayImages;

  Map<String, dynamic> toJson();
}

// extension MdocDecodableExtension on MdocDecodable {
//   T? getItemValue<T>(String s) {
//     if (issuerSigned == null) {
//       return null;
//     }

//     nameSpaceItems = getSignedItems(issuerSigned!, docType);

//     return getItemValueFrom<T>(nameSpaceItems, s);
//   }

//   static T? getItemValueFrom<T>(
//       Map<NameSpace, List<IssuerSignedItem>> items, String s) {
//     for (arr in items.values) {
//       val = arr
//           .where((e) => e.dataElementIdentifier == s)
//           .map((e) => e.getTypedValue())
//           .firstOrNull;
//       if (val != null) {
//         return val as T;
//       }
//     }
//     return null;
//   }
// }
