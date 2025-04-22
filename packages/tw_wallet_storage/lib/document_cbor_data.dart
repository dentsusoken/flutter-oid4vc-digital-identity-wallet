import 'package:tw_iso18013_data_model/tw_iso18013_data_model.dart';

class DocumentCborData {
  DocumentCborData({required this.id, required this.iss, required this.dpk});

  final String id;
  final IssuerSigned iss;
  final CoseKeyPrivate dpk;
}
