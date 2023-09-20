import 'package:tactical_e_clipboard/model/config_model.dart';
import 'package:tactical_e_clipboard/repository/config_repository.dart';
import 'package:uuid/uuid.dart';

interface class ConfigRepositoryImpl implements ConfigRepository {
  @override
  bool delete(ConfigModel k) {
    throw UnimplementedError();
  }

  @override
  ConfigModel get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  List<ConfigModel> getAll() {
    throw UnimplementedError();
  }

  @override
  ConfigModel patch(ConfigModel k) {
    throw UnimplementedError();
  }

  @override
  ConfigModel put(ConfigModel k) {
    throw UnimplementedError();
  }
}