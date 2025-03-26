import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  static const _defaultFormat = 'yyyy-MM-dd HH:mm:ss.SSS';

  String format({String? format}) {
    return DateFormat(format ?? _defaultFormat).format(this);
  }
}
