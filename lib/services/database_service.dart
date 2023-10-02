import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/model/environment.dart';

class DatabaseService {
  static final DatabaseService _databaseManager = DatabaseService._internal();
  factory DatabaseService() {
    return _databaseManager;
  }
  DatabaseService._internal();

  static final _databaseName = Environment.getDatabaseName();
  static const _databaseVersion = 1;
  late Database _db;

  Database getInstanceDB() {
    return _db;
  }

  Future<Database> open() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    return openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    ).then((value) => _db = value);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        '''
      CREATE TABLE IF NOT EXISTS Team (
        idTeam TEXT DEFAULT (lower(hex(randomblob(4))) || '-' || lower(hex(randomblob(2))) || '-4' || substr(lower(hex(randomblob(2))),2) || '-a' || substr('89ab',abs(random()) % 4 + 1, 1) || '-' || lower(hex(randomblob(6)))) PRIMARY KEY,
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
