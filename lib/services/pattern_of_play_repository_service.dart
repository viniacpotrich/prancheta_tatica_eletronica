import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/repository/pattern_of_play_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

import '../ui/common/app_strings.dart';

class PatternOfPlayRepositoryService implements PatternOfPlayRepository {
  final _table = "PatternOfPlay";
  final _whereIdPatternOfPlay = "idPatternOfPlay = ?";

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
      where: _whereIdPatternOfPlay,
      whereArgs: [k.toString()],
    );
    return result > 0;
  }

  @override
  Future<PatternOfPlayModel> get(String t) async {
    List<Map<String, dynamic>> results = await dbm.getInstanceDB().rawQuery(
      "SELECT * FROM $_table WHERE $_whereIdPatternOfPlay",
      [t],
    );
    if (results.isNotEmpty) {
      return PatternOfPlayModel.fromJson(results.first);
    } else {
      throw Exception('$noRecordFoundForKey: $t');
    }
  }

  @override
  Future<List<PatternOfPlayModel>> getAll() async {
    try {
      var data = await dbm.getInstanceDB().query(_table);
      List<PatternOfPlayModel> result = [];
      for (var element in data) {
        var formation = PatternOfPlayModel.fromJson(element);
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
  Future<PatternOfPlayModel> patch(PatternOfPlayModel k) async {
    var mapped = await k.toMap();
    try {
      await dbm.getInstanceDB().update(
        _table,
        mapped,
        where: _whereIdPatternOfPlay,
        whereArgs: [k.idPatternOfPlay.toString()],
      );
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
    }
    return k;
  }

  @override
  Future<PatternOfPlayModel> put(PatternOfPlayModel k) async {
    k.idPatternOfPlay = const Uuid().v4(config: V4Options(null, CryptoRNG()));
    var mapped = await k.toMap();
    if (k.idPatternOfPlay == null) {
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
