import 'package:meta/meta.dart';

@immutable
class WalletException implements Exception {
  const WalletException({required this.message, this.code = 0});

  final String message;
  final int code;

  @override
  String toString() {
    return message;
  }

  @override
  bool operator ==(Object other) {
    if (other is WalletException) {
      return other.message == message;
    }

    return false;
  }

  @override
  int get hashCode => message.hashCode;
}
