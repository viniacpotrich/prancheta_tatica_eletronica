import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/player_contract_repository.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:uuid/uuid.dart';

class PlayerContractRepositoryService implements PlayerContractRepository {
  @override
  DatabaseService get dbm => locator<DatabaseService>();

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
