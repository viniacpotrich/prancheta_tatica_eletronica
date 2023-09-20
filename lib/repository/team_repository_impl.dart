import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository.dart';
import 'package:uuid/uuid.dart';

interface class TeamRepositoryImpl implements TeamRepository {
  @override
  bool delete(TeamModel k) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  TeamModel get(Uuid t) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<TeamModel> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  TeamModel patch(TeamModel k) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  TeamModel put(TeamModel k) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
