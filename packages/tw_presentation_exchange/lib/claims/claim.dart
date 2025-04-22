import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_presentation_exchange/presentation_definitions/presentation_definitions.dart';
import 'package:tw_presentation_exchange/types.dart';

part 'claim.freezed.dart';
part 'claim.g.dart';

@freezed
abstract class Claim with _$Claim {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Claim({required ClaimId id, required String format, required Json jsonObject}) = _Claim;

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
}
