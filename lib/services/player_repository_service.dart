import 'package:sqflite/sqflite.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/player_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/data.dart';
import 'package:uuid/rng.dart';
import 'package:uuid/uuid.dart';

class PlayerRepositoryService implements PlayerRepository {
  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<PlayerModel> get(String t) async {
    final List<Map<String, dynamic>> maps = await dbm.getInstanceDB().rawQuery(
        '''
      SELECT * FROM Player
      LEFT JOIN PlayerPositions ON Player.idPlayer = PlayerPositions.idPlayer
      WHERE Player.idPlayer = ?
    ''',
        [t]);

    if (maps.isNotEmpty) {
      return PlayerModel(
        maps[0]['idPlayer'],
        maps[0]['namePlayer'],
        maps[0]['nicknamePlayer'],
        (maps)
            .map((map) => SoccerPositionEnum.values[map['position']])
            .toList(),
        PreferredFootEnum.values[maps[0]['preferredFootPlayer']],
      );
    }

    throw Exception('ID $t not found');
  }

  @override
  Future<List<PlayerModel>> getAll() async {
    await dbm
        .getInstanceDB()
        .rawQuery("SELECT sqlite_version();")
        .then((value) => print(value));
    return [
      PlayerModel(const Uuid().toString(), "Teste", "TesteNicname",
          [SoccerPositionEnum.goalkeeper], PreferredFootEnum.left)
    ];
  }

  @override
  Future<bool> delete(String k) async {
    final db = dbm.getInstanceDB();
    await db.transaction((txn) async {
      await txn.delete(
        'PlayerPositions',
        where: 'idPlayer = ?',
        whereArgs: [k],
      );
      await txn.delete(
        'Player',
        where: 'idPlayer = ?',
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
        'Player',
        k.toMap(),
        where: 'idPlayer = ?',
        whereArgs: [k.idPlayer],
      );
      await txn.delete(
        'PlayerPositions',
        where: 'idPlayer = ?',
        whereArgs: [k.idPlayer],
      );
      for (var position in k.preferredPositionsPlayer) {
        await txn.insert('PlayerPositions', {
          'idPlayer': k.idPlayer,
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
        'Player',
        k.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      for (var position in k.preferredPositionsPlayer) {
        await txn.insert('PlayerPositions', {
          'idPlayer': k.idPlayer,
          'position': position.index,
        });
      }
    });

    return k;
  }
}
