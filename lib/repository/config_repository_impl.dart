import 'package:tactical_e_clipboard/database/database_manager.dart';
import 'package:tactical_e_clipboard/model/config_model.dart';
import 'package:tactical_e_clipboard/repository/config_repository.dart';
import 'package:uuid/uuid.dart';

import '../app/app.locator.dart';

interface class ConfigRepositoryImpl implements ConfigRepository {
  @override
  DatabaseManager get dbm => locator<DatabaseManager>();
  
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
