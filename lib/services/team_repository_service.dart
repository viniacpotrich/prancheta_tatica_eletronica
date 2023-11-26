import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';
import '../ui/common/app_strings.dart';

class TeamRepositoryService implements TeamRepository {
  final _table = "Team";
  final _whereIdTeam = "idTeam = ?";

  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  get logger => Logger(
        printer: PrettyPrinter(),
      );

  @override
  Future<bool> delete(String k) async {
    var result = await dbm.getInstanceDB().delete(
      _table,
      where: _whereIdTeam,
      whereArgs: [k.toString()],
    );
    return result > 0;
  }

  @override
  Future<TeamModel> get(String t) async {
    List<Map<String, dynamic>> results = await dbm.getInstanceDB().rawQuery(
      "SELECT * FROM $_table WHERE $_whereIdTeam",
      [t],
    );
    if (results.isNotEmpty) {
      return await TeamModel.fromMap(results.first);
    } else {
      throw Exception('$noRecordFoundForKey: $t');
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
      logger.e(genericErrorMessage, error: e);
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
        where: _whereIdTeam,
        whereArgs: [k.idTeam.toString()],
      );
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
    }
    return k;
  }

  @override
  Future<TeamModel> put(TeamModel k) async {
    k.idTeam = const Uuid().v4(config: V4Options(null, CryptoRNG()));
    var mapped = await k.toMap();
    if (k.idTeam == null) {
      Exception(uuidCannotBeNull);
    }
    await dbm.getInstanceDB().insert(
          _table,
          mapped,
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
    return k;
  }
}
