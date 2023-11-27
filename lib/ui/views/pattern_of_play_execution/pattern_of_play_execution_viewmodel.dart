import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';

class PatternOfPlayExecutionViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();

  late PatternOfPlayModel patternOfPlayModel;

  int index = 0;
  List<FormationModel> formationsView = [];

  void interate() {
    if (index < formationsView.length - 1) {
      index++;
    } else {
      index = 0;
    }
    rebuildUi();
  }

  @override
  Future futureToRun() async {
    patternOfPlayModel = _navigationService.currentArguments.patternOfPlay;
    formationsView = patternOfPlayModel.formations ?? [];
  }
}
