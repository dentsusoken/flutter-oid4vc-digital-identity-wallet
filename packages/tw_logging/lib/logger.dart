import 'package:flutter/foundation.dart';

import 'package:tw_logging/log_level.dart';
import 'package:tw_logging/logger_target.dart';
import 'package:tw_logging/targets/console_logger_target.dart';

class Logger {
  Logger({
    this.label = '',
  });

  final String label;

  final List _targets = <LoggerTarget>[
    ConsoleLoggerTarget(),
  ];

  void trace(String message, {Object? error, StackTrace? stackTrace}) {
    write(LogLevel.trace, message, error: error, stackTrace: stackTrace);
  }

  void debug(String message, {Object? error, StackTrace? stackTrace}) {
    write(LogLevel.debug, message, error: error, stackTrace: stackTrace);
  }

  void warn(String message, {Object? error, StackTrace? stackTrace}) {
    write(LogLevel.warning, message, error: error, stackTrace: stackTrace);
  }

  void info(String message, {Object? error, StackTrace? stackTrace}) {
    write(LogLevel.info, message, error: error, stackTrace: stackTrace);
  }

  void error(String message, {Object? error, StackTrace? stackTrace}) {
    write(LogLevel.error, message, error: error, stackTrace: stackTrace);
  }

  void fatal(String message, {Object? error, StackTrace? stackTrace}) {
    write(LogLevel.fatal, message, error: error, stackTrace: stackTrace);
  }

  void flutterError(FlutterErrorDetails error) {
    fatal(
      error.exceptionAsString(),
      error: error.exception,
      stackTrace: error.stack,
    );
  }

  void write(
    LogLevel level,
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final msg = label.isEmpty ? message : '$label: $message';
    for (final target in _targets) {
      if (target.level.value <= level.value) {
        target.write(level, msg, error: error, stackTrace: stackTrace);
      }
    }
  }
}
