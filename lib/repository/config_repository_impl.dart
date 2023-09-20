import 'package:tactical_e_clipboard/model/config_model.dart';
import 'package:tactical_e_clipboard/repository/config_repository.dart';
import 'package:uuid/uuid.dart';

interface class ConfigRepositoryImpl implements ConfigRepository {
  @override
  bool delete(ConfigModel k) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  ConfigModel get(Uuid t) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<ConfigModel> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  ConfigModel patch(ConfigModel k) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  ConfigModel put(ConfigModel k) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
