import 'package:tw_openid4vci/entities/tx_code_input_mode.dart';

class TxCode {
  TxCode({required this.inputMode, this.length, this.description});

  final TxCodeInputMode inputMode;
  final int? length;
  final String? description;
}
