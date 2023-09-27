import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/repository/player_contract_repository_impl.dart';
import 'package:tactical_e_clipboard/services/abstract_service.dart';
import 'package:uuid/uuid.dart';

class PlayerContractService
    extends AbstractService<PlayerContractModel, Uuid, PlayerContractRepositoryImpl> {}
