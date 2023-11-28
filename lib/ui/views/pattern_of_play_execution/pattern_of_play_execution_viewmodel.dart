import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';

class PatternOfPlayExecutionViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();

  late PatternOfPlayModel patternOfPlayModel;

  int index = 0;
  List<FormationModel> allFormations = [];
  FormationModel formationView = FormationModel();

  void interate() {
    if (index < allFormations.length - 1) {
      index++;
    } else {
      index = 0;
    }
    updateFormationPosition();
  }

  void updateFormationPosition() {
    for (int i = 0; i < formationView.positions!.length; i++) {
      formationView.positions![i].posX =
          allFormations[index].positions![i].posX;
      formationView.positions![i].posY =
          allFormations[index].positions![i].posY;
    }
    rebuildUi();
  }

  @override
  Future futureToRun() async {
    patternOfPlayModel = _navigationService.currentArguments.patternOfPlay;
    allFormations = patternOfPlayModel.formations ?? [];
    formationView = allFormations[index];
  }
}
