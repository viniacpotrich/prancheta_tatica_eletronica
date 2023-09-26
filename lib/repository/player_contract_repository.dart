import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class PlayerContractRepository
    extends RepositoryInterface<Uuid, PlayerContractModel> {

  @override
  get dbm => throw UnimplementedError();
  
  @override
  Future<bool> delete(Uuid t) {

    throw UnimplementedError();
  }
  
  @override
  Future<PlayerContractModel> get(Uuid t) {
   
    throw UnimplementedError();
  }
  
  @override
  Future<List<PlayerContractModel>> getAll() {

    throw UnimplementedError();
  }
  
  @override
  Future<PlayerContractModel> patch(PlayerContractModel k) {

    throw UnimplementedError();
  }
  
  @override
  Future<PlayerContractModel> put(PlayerContractModel k) {

    throw UnimplementedError();
  }
  
 
}
