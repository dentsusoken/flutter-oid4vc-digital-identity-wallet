import 'package:logger/logger.dart';

import 'package:tw_logging/log_level.dart';
import 'package:tw_logging/logger_target.dart';

class ConsoleLoggerTarget extends LoggerTarget {
  ConsoleLoggerTarget({this.level = LogLevel.trace});

  final _logger = Logger(
    printer: PrettyPrinter(
      stackTraceBeginIndex: 3,
      methodCount: 4,
      errorMethodCount: 10,
      lineLength: 60,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.dateAndTime,
    ),
  );

  @override
  final LogLevel level;

  @override
  void write(LogLevel level, String message, {Object? error, StackTrace? stackTrace}) {
    switch (level) {
      case LogLevel.trace:
        _logger.t(message);
        break;
      case LogLevel.debug:
        _logger.d(message);
        break;
      case LogLevel.info:
        _logger.i(message);
        break;
      case LogLevel.warning:
        _logger.w(message);
        break;
      case LogLevel.error:
        _logger.e(message);
        break;
      case LogLevel.fatal:
        _logger.f(message);
        break;
      case LogLevel.off:
        break;
    }
  }
}
