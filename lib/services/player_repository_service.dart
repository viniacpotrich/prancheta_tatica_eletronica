import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/player_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

import '../ui/common/app_strings.dart';

class PlayerRepositoryService implements PlayerRepository {
  final _table = "Player";
  final _primaryKey = "idPlayer";

  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  get logger => Logger(
        printer: PrettyPrinter(),
      );

  @override
  Future<PlayerModel> get(String id) async {
    final List<Map<String, dynamic>> maps = await _getPlayers(id);

    if (maps.isNotEmpty) {
      return PlayerModel.fromMap(maps[0]);
    }

    throw Exception('$noRecordFoundForKey: $id');
  }

  @override
  Future<List<PlayerModel>> getAll() async {
    try {
      final List<Map<String, dynamic>> data = await _getPlayers(null);
      List<PlayerModel> result = [];
      for (var element in data) {
        result.add(PlayerModel.fromMap(element));
      }
      return result;
    } catch (e) {
      logger.e(genericErrorMessage, error: e);
      return [];
    }
  }

  @override
  Future<bool> delete(String k) async {
    final db = dbm.getInstanceDB();
    await db.transaction((txn) async {
      await txn.delete(
        'PlayerPositions',
        where: '$_primaryKey = ?',
        whereArgs: [k],
      );
      await txn.delete(
        _table,
        where: '$_primaryKey = ?',
        whereArgs: [k],
      );
    });

    return true;
  }

  @override
  Future<PlayerModel> patch(PlayerModel k) async {
    final db = dbm.getInstanceDB();
    await db.transaction((txn) async {
      await txn.update(
        _table,
        k.toMap(),
        where: '$_primaryKey = ?',
        whereArgs: [k.idPlayer],
      );
      await txn.delete(
        'PlayerPositions',
        where: '$_primaryKey = ?',
        whereArgs: [k.idPlayer],
      );
      for (var position in k.preferredPositionsPlayer!) {
        await txn.insert('PlayerPositions', {
          _primaryKey: k.idPlayer,
          'position': position.index,
        });
      }
    });

    return k;
  }

  @override
  Future<PlayerModel> put(PlayerModel k) async {
    final db = dbm.getInstanceDB();
    k.idPlayer = const Uuid().v4(config: V4Options(null, CryptoRNG()));
    await db.transaction((txn) async {
      await txn.insert(
        _table,
        k.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      for (var position in k.preferredPositionsPlayer!) {
        await txn.insert('PlayerPositions', {
          _primaryKey: k.idPlayer,
          'position': position.index,
        });
      }
    });

    return k;
  }

  Future<List<Map<String, dynamic>>> _getPlayers(String? id) {
    String query = '''
        SELECT $_table.$_primaryKey, 
          $_table.namePlayer, 
          $_table.nicknamePlayer, 
          $_table.preferredFootPlayer, 
          GROUP_CONCAT(PlayerPositions.position) as positions
        FROM $_table
        LEFT JOIN PlayerPositions 
        ON $_table.$_primaryKey = PlayerPositions.idPlayer
    ''';

    if (id != null) {
      query += ''' WHERE $_table.$_primaryKey = ?''';
    }
    query += ''' GROUP BY $_table.$_primaryKey''';

    return id == null
        ? dbm.getInstanceDB().rawQuery(query)
        : dbm.getInstanceDB().rawQuery(query, [id]);
  }
}
