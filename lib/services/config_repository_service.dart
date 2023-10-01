import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/config_model.dart';
import 'package:tactical_e_clipboard/repository/config_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/uuid.dart';

class ConfigRepositoryService implements ConfigRepository {
  @override
  DatabaseService get dbm => locator<DatabaseService>();

  @override
  Future<bool> delete(Uuid k) {
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
