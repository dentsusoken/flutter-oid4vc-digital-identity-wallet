enum LogLevel {
  trace(1000),
  debug(2000),
  info(3000),
  warning(4000),
  error(5000),
  fatal(6000),
  off(10000);

  const LogLevel(this.value);

  final int value;
}
