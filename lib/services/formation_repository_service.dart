import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/repository/formation_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

class FormationRepositoryService implements FormationRepository {
  final _table = "Formation";
  final _whereIdFormation = "idFormation = ?";

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
      where: _whereIdFormation,
      whereArgs: [k.toString()],
    );
    return result > 0;
  }

  @override
  Future<FormationModel> get(String t) async {
    List<Map<String, dynamic>> results = await dbm.getInstanceDB().rawQuery(
      "SELECT * FROM $_table WHERE $_whereIdFormation",
      [t],
    );
    if (results.isNotEmpty) {
      return FormationModel.fromJson(results.first);
    } else {
      throw Exception('$noRecordFoundForKey: $t');
    }
  }

  @override
  Future<List<FormationModel>> getAll() async {
    try {
      var data = await dbm.getInstanceDB().query(_table);
      List<FormationModel> result = [];
      for (var element in data) {
        var formation = FormationModel.fromJson(element);
        result.add(await formation);
      }
      return result;
    } catch (e) {
      print(e);
      // logger.e(genericErrorMessage, error: e);
      return [];
    }
  }

  @override
  Future<FormationModel> patch(FormationModel k) async {
    var mapped = await k.toJson();
    try {
      await dbm.getInstanceDB().update(
        _table,
        mapped,
        where: _whereIdFormation,
        whereArgs: [k.idFormation.toString()],
      );
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
    }
    return k;
  }

  @override
  Future<FormationModel> put(FormationModel k) async {
    k.idFormation = const Uuid().v4(config: V4Options(null, CryptoRNG()));
    var mapped = await k.toJson();
    if (k.idFormation == null) {
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
