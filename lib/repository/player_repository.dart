import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class PlayerRepository
    extends RepositoryInterface<Uuid, PlayerModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(Uuid t) {
    throw UnimplementedError();
  }

  @override
  Future<PlayerModel> get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  Future<List<PlayerModel>> getAll() {
    throw UnimplementedError();
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