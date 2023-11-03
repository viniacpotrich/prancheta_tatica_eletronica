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
      [t],
    );
    if (results.isNotEmpty) {
      return await TeamModel.fromMap(results.first);
    } else {
      throw Exception('No record found for Uuid: $t');
    }
  }

  @override
  Future<List<TeamModel>> getAll() async {
    try {
      var data = await dbm.getInstanceDB().query(_table);
      List<TeamModel> result = [];
      for (var element in data) {
        result.add(await TeamModel.fromMap(element));
      }
      return result;
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Future<TeamModel> patch(TeamModel k) async {
    var mapped = await k.toMap();
    try {
      await dbm.getInstanceDB().update(
        _table,
        mapped,
        where: "idTeam = ?",
        whereArgs: [k.idTeam.toString()],
      );
    } catch (e) {
      print(e);
    }
    return k;
  }

  @override
  Future<TeamModel> put(TeamModel k) async {
    k.idTeam = const Uuid().v4(config: V4Options(null, CryptoRNG()));
    var mapped = await k.toMap();
    if (k.idTeam == null) {
      Exception("UUID cannot be null");
    }
    await dbm.getInstanceDB().insert(
          _table,
          mapped,
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return k;
  }
}
