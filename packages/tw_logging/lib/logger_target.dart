import 'package:tw_logging/log_level.dart';

abstract class LoggerTarget {
  LogLevel get level;

  void write(LogLevel level, String message, {Object? error, StackTrace? stackTrace});
}
