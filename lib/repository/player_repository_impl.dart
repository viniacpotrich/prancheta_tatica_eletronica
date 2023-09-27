import 'package:tactical_e_clipboard/database/database_manager.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/player_repository.dart';
import 'package:uuid/uuid.dart';
import '../app/app.locator.dart';

interface class PlayerRepositoryImpl implements PlayerRepository {
  @override
  DatabaseManager get dbm => locator<DatabaseManager>();

  @override
  Future<PlayerModel> get(Uuid t) async {
    throw UnimplementedError();
  }

  @override
  Future<bool> delete(Uuid k) {
    throw UnimplementedError();
  }

  @override
  Future<List<PlayerModel>> getAll() async {
    await dbm
        .getInstanceDB()
        .rawQuery("SELECT sqlite_version();")
        .then((value) => print(value));
    return [
      PlayerModel("Teste", "TesteNicname", [SoccerPositionEnum.goalkeeper],
          PreferredFootEnum.left)
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
