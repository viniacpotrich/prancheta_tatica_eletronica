import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/player_repository.dart';
import 'package:uuid/uuid.dart';

interface class PlayerRepositoryImpl implements PlayerRepository {
  @override
  bool delete(PlayerModel k) {
    throw UnimplementedError();
  }

  @override
  PlayerModel get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  List<PlayerModel> getAll() {
    throw UnimplementedError();
  }

  @override
  PlayerModel patch(PlayerModel k) {
    throw UnimplementedError();
  }

  @override
  PlayerModel put(PlayerModel k) {
    throw UnimplementedError();
  }
}
