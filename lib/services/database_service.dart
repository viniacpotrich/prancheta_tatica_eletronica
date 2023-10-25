import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/model/environment.dart';
import 'package:tactical_e_clipboard/model/parameter_model.dart';

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
    await db.execute('''
     CREATE TABLE IF NOT EXISTS Player (
      idPlayer TEXT PRIMARY KEY
    );
    ''');
    await db.execute('''
     CREATE TABLE IF NOT EXISTS PlayerContract (
      idPlayerContract TEXT PRIMARY KEY,
      idPlayer TEXT NOT NULL,
      idTeam TEXT NOT NULL,
      dateStart INT NOT NULL,
      dateEnd INT NOT NULL,
      FOREIGN KEY (idPlayer) REFERENCES Player(idPlayer),
      FOREIGN KEY (idTeam) REFERENCES Team(idTeam)
    );
    ''');
    await db.execute('''
     CREATE TABLE IF NOT EXISTS Params (
      key TEXT PRIMARY KEY,
      value TEXT NOT NULL
    );
    ''');
    await db.insert(
      "Params",
      ParameterModel(
        key: "password",
        value: "",
      ).toMap(),
    );
  }
}
