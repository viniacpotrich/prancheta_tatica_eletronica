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
