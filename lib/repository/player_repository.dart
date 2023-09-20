import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class PlayerRepository
    extends RepositoryInterface<Uuid, PlayerModel> {
  @override
  bool delete(PlayerModel k) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  PlayerModel get(Uuid t) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<PlayerModel> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  PlayerModel patch(PlayerModel k) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  PlayerModel put(PlayerModel k) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
