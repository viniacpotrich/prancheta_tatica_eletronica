import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';

class PatternOfPlayModel {
  String? idPatternOfPlay;
  TeamModel? team;
  DateTime? date;
  List<List<PositionField>>? positionMovements; //saves de movimento

  PatternOfPlayModel({
    this.idPatternOfPlay,
    this.team,
    this.date,
    this.positionMovements,
  });

  Map<String, Object?> toMap() {
    return {
      'idPatternOfPlay': idPatternOfPlay?.toString(),
      'team': team,
      'date': date,
      'positionMovements': positionMovements!
    };
  }

  static PatternOfPlayModel fromMap(Map<String, dynamic> map) {
    return PatternOfPlayModel(
      idPatternOfPlay: map['idPlayer'],
      team: map['namePlayer'],
      date: map['nicknamePlayer'],
      positionMovements: [],
    );
  }
}
