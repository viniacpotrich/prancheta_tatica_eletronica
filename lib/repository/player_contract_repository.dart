import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';

interface class PlayerContractRepository
    extends RepositoryInterface<String, PlayerContractModel> {
  @override
  get dbm => throw UnimplementedError();

  @override
  Future<bool> delete(String t) {
    throw UnimplementedError();
  }

  @override
  Future<PlayerContractModel> get(String t) {
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
