import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/uuid.dart';

class TeamRepositoryService implements TeamRepository {
  final _table = "Team";

  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<bool> delete(Uuid k) async {
    var result = await dbm.getInstanceDB().delete(
      _table,
      where: "idTeam = ?",
      whereArgs: [k.toString()],
    );
    return result > 0;
  }

  @override
  Future<TeamModel> get(Uuid t) async {
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

  // @override
  // Future<List<TeamModel>> getAll() async {
  // return dbm
  //     .getInstanceDB()
  //     .query(_table)
  //     .asStream()
  //     .map((element) => element.map((value) => TeamModel.fromMap(value)))
  //     .toList() as Future<List<TeamModel>>;
  // }]  @override
  @override
  Future<List<TeamModel>> getAll() async {
    final List<Map<String, dynamic>> queryResult =
        await dbm.getInstanceDB().query(_table);
    return queryResult.map((value) => TeamModel.fromMap(value)).toList()
        as List<TeamModel>;
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
    await dbm.getInstanceDB().insert(
          _table,
          k.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return k;
  }
}
