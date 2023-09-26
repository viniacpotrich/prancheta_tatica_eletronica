import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository_impl.dart';
import 'package:tactical_e_clipboard/services/abstract_service.dart';
import 'package:uuid/uuid.dart';

class TeamService
    extends AbstractService<TeamModel, Uuid, TeamRepositoryImpl> {}
