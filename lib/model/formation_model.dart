import 'dart:convert';
import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';

import '../app/app.locator.dart';

class FormationModel {
  String? idFormation;
  TeamModel? team;
  DateTime? dateStart;
  DateTime? dateEnd;
  List<PositionField>? positions;

  FormationModel({
    this.idFormation,
    this.team,
    this.dateStart,
    this.dateEnd,
    this.positions,
  });

  String positionToJson() {
    return jsonEncode(positions);
  }

  static Future<List<PositionField>> positionFromJson(String json) async {
    var decoded = jsonDecode(json);
    List<PositionField> newList = [];
    for (var element in decoded) {
      newList.add(await PositionField.fromJson(element));
    }
    return newList;
  }

  Map<String, Object?> toJson() {
    return {
      'idFormation': idFormation?.toString(),
      'idTeam': team!.idTeam.toString(),
      'dateStart': dateStart!.millisecondsSinceEpoch,
      'dateEnd': dateEnd!.millisecondsSinceEpoch,
      'positions': positionToJson(),
    };
  }

  static Future<FormationModel> fromJson(Map<String, dynamic> map) async {
    final _teamService = locator<TeamService>();
    TeamModel? teamModel = await _teamService.get(map['idTeam']);

    return FormationModel(
      idFormation: map['idFormation'],
      team: teamModel,
      dateStart: DateTime.fromMillisecondsSinceEpoch(map['dateStart'] as int),
      dateEnd: DateTime.fromMillisecondsSinceEpoch(map['dateEnd'] as int),
      positions: await positionFromJson(map['positions']),
    );
  }
}
