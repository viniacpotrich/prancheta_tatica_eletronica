import 'package:prancheta_tatica_eletronica/model/player_model.dart';
import 'package:prancheta_tatica_eletronica/model/team_model.dart';

class PlayerContractModel {
  PlayerModel? palyer;
  TeamModel? team;
  DateTime? startDate;
  DateTime? endDate;

  PlayerContractModel(
    this.palyer,
    this.team,
    this.startDate,
    this.endDate,
  );
}
