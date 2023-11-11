import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';

interface class PlayerRepository
    extends RepositoryInterface<String, PlayerModel> {
  @override
  get dbm => throw UnimplementedError();
  @override
  get logger => throw UnimplementedError();

  @override
  Future<bool> delete(String t) {
    throw UnimplementedError();
  }

  @override
  Future<PlayerModel> get(String t) {
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
