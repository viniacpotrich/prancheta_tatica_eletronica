import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';

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
