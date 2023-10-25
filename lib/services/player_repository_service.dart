import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/player_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/uuid.dart';

class PlayerRepositoryService implements PlayerRepository {
  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<PlayerModel> get(String t) async {
    final List<Map<String, dynamic>> maps =
        await dbm.getInstanceDB().rawQuery('''
      SELECT * FROM Player
      LEFT JOIN PlayerPositions ON Player.idPlayer = PlayerPositions.idPlayer
      WHERE Player.idPlayer = ?
    ''', [t]);

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
  Future<bool> delete(String k) {
    throw UnimplementedError();
  }

  @override
  Future<List<PlayerModel>> getAll() async {
    await dbm
        .getInstanceDB()
        .rawQuery("SELECT sqlite_version();")
        .then((value) => print(value));
    return [
      PlayerModel(const Uuid(), "Teste", "TesteNicname",
          [SoccerPositionEnum.goalkeeper], PreferredFootEnum.left)
    ];
  }

  @override
  Future<PlayerModel> patch(PlayerModel k) {
    throw UnimplementedError();
  }

  @override
  Future<PlayerModel> put(PlayerModel k) {
    throw UnimplementedError();
  }
}
