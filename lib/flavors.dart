import 'package:tw_logging/tw_logging.dart';

enum Flavor { dev, prod }

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'TW Wallet Dev';
      case Flavor.prod:
        return 'TW Wallet';
    }
  }

  static LogLevel get logLevel {
    switch (appFlavor) {
      case Flavor.dev:
        return LogLevel.trace;
      case Flavor.prod:
        return LogLevel.error;
    }
  }
}
