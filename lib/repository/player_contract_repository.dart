import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class PlayerContractRepository
    extends RepositoryInterface<Uuid, PlayerContractModel> {
  @override
  bool delete(PlayerContractModel k) {
    throw UnimplementedError();
  }

  @override
  PlayerContractModel get(Uuid t) {
    throw UnimplementedError();
  }

  @override
  List<PlayerContractModel> getAll() {
    throw UnimplementedError();
  }

  @override
  PlayerContractModel patch(PlayerContractModel k) {
    throw UnimplementedError();
  }

  @override
  PlayerContractModel put(PlayerContractModel k) {
    throw UnimplementedError();
  }
}
