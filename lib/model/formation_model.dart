import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';

class FormationModel {
  TeamModel? team;
  DateTime? date;
  List<PositionField>? positions;

  FormationModel(this.team, this.date);
}
