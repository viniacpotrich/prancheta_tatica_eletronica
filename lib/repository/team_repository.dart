import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class TeamRepository extends RepositoryInterface<String, TeamModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(String t) {
    throw UnimplementedError();
  }

  @override
  Future<TeamModel> get(String t) {
    throw UnimplementedError();
  }

  @override
  Future<List<TeamModel>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<TeamModel> patch(TeamModel k) {
    throw UnimplementedError();
  }

  @override
  Future<TeamModel> put(TeamModel k) {
    throw UnimplementedError();
  }
}
