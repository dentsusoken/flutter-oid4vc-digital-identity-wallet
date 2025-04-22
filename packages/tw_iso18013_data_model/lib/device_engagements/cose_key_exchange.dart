import 'package:tw_iso18013_data_model/device_engagements/cose_key.dart';
import 'package:tw_iso18013_data_model/device_engagements/cose_key_private.dart';

/// A COSE_Key exchange pair
class CoseKeyExchange {
  CoseKeyExchange({required this.publicKey, required this.privateKey});

  final CoseKey publicKey;
  final CoseKeyPrivate privateKey;
}
