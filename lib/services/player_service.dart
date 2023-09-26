import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/repository/player_repository_impl.dart';
import 'package:tactical_e_clipboard/services/abstract_service.dart';
import 'package:uuid/uuid.dart';

class PlayerService
    extends AbstractService<PlayerModel, Uuid, PlayerRepositoryImpl> {
}
