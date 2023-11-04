import 'package:tactical_e_clipboard/model/team_model.dart';

class PlayerContractModel {
  String? idPlayerContract;
  String? idPlayer;
  TeamModel? team;
  DateTime? startDate;
  DateTime? endDate;

  PlayerContractModel({
    this.idPlayerContract,
    this.idPlayer,
    this.team,
    this.startDate,
    this.endDate,
  });

  static fromMap(Map<String, Object?> map) async {
    var playerContract = PlayerContractModel(
      idPlayer: map['idPlayer'] as String,
      team: TeamModel(
        idTeam: map['idTeam'] as String,
        nameTeam: map['nameTeam'] as String,
        nicknameTeam: map['nicknameTeam'] as String,
        colorPrimaryTeam: map['colorPrimaryTeam'] as String,
        colorSecondaryTeam: map['colorSecondaryTeam'] as String,
        cityTeam: map['cityTeam'] as String,
      ),
      startDate: DateTime.fromMillisecondsSinceEpoch(map['dateStart'] as int),
      endDate: DateTime.fromMillisecondsSinceEpoch(map['dateEnd'] as int),
    );
    if (map['idPlayerContract'] != null) {
      playerContract.idPlayerContract = map['idPlayerContract'] as String;
    }
    return playerContract;
  }

  Future<Map<String, Object?>> toMap() async {
    return {
      'idPlayerContract': idPlayerContract,
      'idPlayer': idPlayer,
      'team': team,
      'dateStart': startDate!.millisecondsSinceEpoch,
      'dateEnd': endDate!.millisecondsSinceEpoch,
    };
  }
}
