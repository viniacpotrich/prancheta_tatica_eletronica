import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/player_contract_repository.dart';
import 'package:uuid/uuid.dart';

import '../app/app.locator.dart';
import '../database/database_manager.dart';

interface class PlayerContractRepositoryImpl
    implements PlayerContractRepository {
  @override
  DatabaseManager get dbm => locator<DatabaseManager>();
  
  @override
  Future<bool> delete(Uuid k) {

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
