import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/repository/formation_repository.dart';
import 'package:uuid/uuid.dart';
import '../database/database_manager.dart';

interface class FormationRepositoryImpl implements FormationRepository {
  @override
  DatabaseManager get dbm => locator<DatabaseManager>();

  @override
  Future<bool> delete(Uuid k) {
    throw UnimplementedError();
  }
  
  @override
  Future<FormationModel> get(Uuid t) {
   
    throw UnimplementedError();
  }
  
  @override
  Future<List<FormationModel>> getAll() {

    throw UnimplementedError();
  }
  
  @override
  Future<FormationModel> patch(FormationModel k) {

    throw UnimplementedError();
  }
  
  @override
  Future<FormationModel> put(FormationModel k) {

    throw UnimplementedError();
  }
}
