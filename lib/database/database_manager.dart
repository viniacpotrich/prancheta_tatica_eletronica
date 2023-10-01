import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/model/environment.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseManager {
  static final DatabaseManager _databaseManager = DatabaseManager._internal();
  factory DatabaseManager() {
    return _databaseManager;
  }
  DatabaseManager._internal();

  static final _databaseName = Environment.getDatabaseName();
  static const _databaseVersion = 1;
  late Database _db;

  Database getInstanceDB() {
    return _db;
  }

  Future<void> open() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    _db = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
    return;
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS Team (
        idTeam TEXT PRIMARY KEY,
        nameTeam TEXT NOT NULL,
        nicknameTeam TEXT NOT NULL,
        colorPrimaryTeam TEXT NOT NULL,
        colorSecondaryTeam TEXT NOT NULL,
        cityTeam TEXT NOT NULL,
        logoTeam BLOB
      );
    ''');
  }
}
