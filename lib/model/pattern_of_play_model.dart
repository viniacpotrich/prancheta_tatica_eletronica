import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';

class PatternOfPlayModel {
  TeamModel? team;
  DateTime? date;
  List<List<PositionField>>? positionMovements;

  PatternOfPlayModel(this.team, this.date);
}
