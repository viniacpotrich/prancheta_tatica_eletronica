import 'package:tactical_e_clipboard/model/config_model.dart';
import 'package:tactical_e_clipboard/services/abstract_service.dart';
import 'package:tactical_e_clipboard/services/config_repository_service.dart';
import 'package:uuid/uuid.dart';

class ConfigService
    extends AbstractService<ConfigModel, Uuid, ConfigRepositoryService> {}
