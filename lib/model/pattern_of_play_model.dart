import 'dart:convert';

import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';

import '../app/app.locator.dart';
import '../services/team_service.dart';

class PatternOfPlayModel {
  String? idPatternOfPlay;
  TeamModel? team;
  DateTime? dateStart;
  DateTime? dateEnd;
  List<FormationModel>? formations; //saves de movimento

  PatternOfPlayModel({
    this.idPatternOfPlay,
    this.team,
    this.dateStart,
    this.dateEnd,
    this.formations,
  });

  String formationsToJson() {
    return jsonEncode(formations);
  }

  static Future<List<FormationModel>> formationFromJson(String json) async {
    var decoded = jsonDecode(json);
    List<FormationModel> newList = [];
    for (var element in decoded) {
      newList.add(await FormationModel.fromJson(element));
    }
    return newList;
  }

  Map<String, Object?> toMap() {
    return {
      'idPatternOfPlay': idPatternOfPlay?.toString(),
      'idTeam': team!.idTeam,
      'dateStart': dateStart!.millisecondsSinceEpoch,
      'dateEnd': dateEnd!.millisecondsSinceEpoch,
      'formations': formationsToJson(),
    };
  }

  static Future<PatternOfPlayModel> fromJson(Map<String, dynamic> map) async {
    final _teamService = locator<TeamService>();
    TeamModel? teamModel = await _teamService.get(map['idTeam']);

    return PatternOfPlayModel(
        idPatternOfPlay: map['idPatternOfPlay'],
        team: teamModel,
        dateStart: DateTime.fromMillisecondsSinceEpoch(map['dateStart'] as int),
        dateEnd: DateTime.fromMillisecondsSinceEpoch(map['dateEnd'] as int),
        formations: await formationFromJson(map['formations']));
  }
}
