import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository.dart';
import 'package:uuid/uuid.dart';

interface class TeamRepositoryImpl implements TeamRepository {
  @override
  bool delete(TeamModel k) {
    throw UnimplementedError();
  }

  @override
  TeamModel get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  List<TeamModel> getAll() {
    throw UnimplementedError();
  }

  @override
  TeamModel patch(TeamModel k) {
    throw UnimplementedError();
  }

  @override
  TeamModel put(TeamModel k) {
    throw UnimplementedError();
  }
}
