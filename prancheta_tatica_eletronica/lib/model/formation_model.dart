import 'package:prancheta_tatica_eletronica/model/position_field.dart';
import 'package:prancheta_tatica_eletronica/model/team_model.dart';

class FormationModel {
  TeamModel? team;
  DateTime? date;
  List<PositionField>? positions;

  FormationModel(this.team, this.date);
}
