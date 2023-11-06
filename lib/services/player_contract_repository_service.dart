import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/player_contract_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

class PlayerContractRepositoryService implements PlayerContractRepository {
  final _table = "PlayerContract";

  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<bool> delete(String k) async {
    var result = await dbm.getInstanceDB().delete(
      _table,
      where: "idPlayerContract = ?",
      whereArgs: [k.toString()],
    );
    return result > 0;
  }

  @override
  Future<PlayerContractModel> get(String t) async {
    List<Map<String, dynamic>> results = await dbm.getInstanceDB().rawQuery(
      "SELECT * FROM $_table WHERE idPlayerContract = ?",
      [t],
    );
    if (results.isNotEmpty) {
      return await PlayerContractModel.fromMap(results.first);
    } else {
      throw Exception('No record found for Uuid: $t');
    }
  }

  @override
  Future<List<PlayerContractModel>> getAll() async {
    try {
      var data = await dbm.getInstanceDB().rawQuery(''' 
          SELECT pc.*, t.* FROM PlayerContract as pc
          LEFT JOIN Team as t ON t.idTeam = pc.idTeam 
      ''');
      List<PlayerContractModel> result = [];
      for (var element in data) {
        var contract = await PlayerContractModel.fromMap(element);
        result.add(contract);
      }
      return result;
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Future<PlayerContractModel> patch(PlayerContractModel k) async {
    var mapped = await k.toMap();
    try {
      await dbm.getInstanceDB().update(
        _table,
        mapped,
        where: "idTeam = ?",
        whereArgs: [k.idPlayerContract.toString()],
      );
    } catch (e) {
      print(e);
    }
    return k;
  }

  @override
  Future<PlayerContractModel> put(PlayerContractModel k) async {
    k.idPlayerContract = const Uuid().v4(config: V4Options(null, CryptoRNG()));
    var mapped = await k.toMap();
    if (k.idPlayerContract == null) {
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
