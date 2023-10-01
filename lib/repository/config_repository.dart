import 'package:tactical_e_clipboard/model/config_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class ConfigRepository
    extends RepositoryInterface<Uuid, ConfigModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(Uuid t) {
    throw UnimplementedError();
  }

  @override
  Future<ConfigModel> get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  Future<List<ConfigModel>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<ConfigModel> patch(ConfigModel k) {
    throw UnimplementedError();
  }

  @override
  Future<ConfigModel> put(ConfigModel k) {
    throw UnimplementedError();
  }
}
