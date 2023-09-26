import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';


interface class PatternOfPlayRepository
    extends RepositoryInterface<Uuid, PatternOfPlayModel> {

  @override
  get dbm => throw UnimplementedError();
  
  @override
  Future<bool> delete(Uuid t) {

    throw UnimplementedError();
  }
  
  @override
  Future<PatternOfPlayModel> get(Uuid t) {
   
    throw UnimplementedError();
  }
  
  @override
  Future<List<PatternOfPlayModel>> getAll() {

    throw UnimplementedError();
  }
  
  @override
  Future<PatternOfPlayModel> patch(PatternOfPlayModel k) {

    throw UnimplementedError();
  }
  
  @override
  Future<PatternOfPlayModel> put(PatternOfPlayModel k) {

    throw UnimplementedError();
  }

 
}
