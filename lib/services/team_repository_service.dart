import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

class TeamRepositoryService implements TeamRepository {
  final _table = "Team";

  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<bool> delete(String k) async {
    var result = await dbm.getInstanceDB().delete(
      _table,
      where: "idTeam = ?",
      whereArgs: [k.toString()],
    );
    return result > 0;
  }

  @override
  Future<TeamModel> get(String t) async {
    List<Map<String, dynamic>> results = await dbm.getInstanceDB().rawQuery(
      "SELECT * FROM $_table WHERE idTeam = ?",
      [t.toString()],
    );
    if (results.isNotEmpty) {
      return TeamModel.fromMap(results.first);
    } else {
      throw Exception('No record found for Uuid: $t');
    }
  }

  @override
  Future<List<TeamModel>> getAll() async {
    return dbm
        .getInstanceDB()
        .query(_table)
        .asStream()
        .map((list) => list.map((v) => TeamModel.fromMap(v)))
        .handleError((err) => print("Error: $err"))
        .toList() as Future<List<TeamModel>>;
  }

  @override
  Future<TeamModel> patch(TeamModel k) async {
    await dbm.getInstanceDB().update(
      _table,
      k.toMap(),
      where: "idTeam = ?",
      whereArgs: [k.idTeam.toString()],
    );
    return k;
  }

  @override
  Future<TeamModel> put(TeamModel k) async {
    k.idTeam = Uuid().v4(config: V4Options(null, CryptoRNG()));
    if (k.idTeam == null) {
      Exception("UUID cannot be null");
    }
    await dbm.getInstanceDB().insert(
          _table,
          k.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return k;
  }
}
