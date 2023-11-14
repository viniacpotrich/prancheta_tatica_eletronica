import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';

class FormationModel {
  String? idFormation;
  TeamModel? team;
  DateTime? date;
  List<PositionField>? positions;

  FormationModel({
    this.idFormation,
    this.team,
    this.date,
    this.positions,
  });
}
