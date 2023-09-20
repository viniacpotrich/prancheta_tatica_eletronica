class Environment {
  static const String _DATA_BASE_NAME =
      String.fromEnvironment("tactical_eclipboard_db");
  static String getDatabaseName() {
    return _DATA_BASE_NAME.isEmpty ? "tactical_eclipboard_db" : _DATA_BASE_NAME;
  }
}
