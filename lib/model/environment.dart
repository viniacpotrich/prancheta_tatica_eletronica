class Environment {
  static const String _databaseName =
      String.fromEnvironment("tactical_eclipboard_db");
  static String getDatabaseName() {
    return _databaseName.isEmpty ? "tactical_eclipboard_db" : _databaseName;
  }
}
