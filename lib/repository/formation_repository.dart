import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';


interface class FormationRepository
    extends RepositoryInterface<Uuid, FormationModel> {

  @override
  get dbm => throw UnimplementedError();
  
  @override
  Future<bool> delete(Uuid t) {

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
