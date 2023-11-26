import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_repository_service.dart';

import '../../../app/app.locator.dart';

class PatternOfPlayListViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();
  final _patternOfPlayService = locator<PatternOfPlayRepositoryService>();

  List<PatternOfPlayModel> patternsOfPlay = [];

  @override
  Future futureToRun() async {
    _patternOfPlayService.getAll().then((value) {
      patternsOfPlay = value;
      rebuildUi();
    });
  }

  void deletePlayerContract(int index) {
    _patternOfPlayService
        .delete(patternsOfPlay.elementAt(index).idPatternOfPlay!)
        .then((_) {
      patternsOfPlay.removeAt(index);
      rebuildUi();
    });
  }

  void addPatternOfPlaye() async {
    await _navigationService.navigateToPatternOfPlayDetailView(
      patternOfPlay: null,
    );
    await futureToRun();
  }

  void editPatternOfPlaye(int index) async {
    await _navigationService.navigateToPatternOfPlayDetailView(
      patternOfPlay: patternsOfPlay.elementAt(index),
    );
    await futureToRun();
  }
}
