import 'package:tactical_e_clipboard/database/database_manager.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/repository/team_repository.dart';
import 'package:uuid/uuid.dart';
import '../app/app.locator.dart';

interface class TeamRepositoryImpl implements TeamRepository {
  @override
  DatabaseManager get dbm => locator<DatabaseManager>();
  
  @override
  Future<bool> delete(Uuid k) {

    throw UnimplementedError();
  }
  
  @override
  Future<TeamModel> get(Uuid t) {
   
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