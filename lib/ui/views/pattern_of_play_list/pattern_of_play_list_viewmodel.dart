import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_repository_service.dart';

import '../../../app/app.locator.dart';
import '../../common/app_strings.dart';

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

  void deletePatternsOfPlay(int index, context) {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: const Text(pleaseConfirm),
            content: const Text(deletePlayerConfirmation),
            actions: [
              TextButton(
                  onPressed: () {
                    _patternOfPlayService
                        .delete(patternsOfPlay
                            .elementAt(index)
                            .idPatternOfPlay!) //TODO TROCAR
                        .then((_) {
                      patternsOfPlay.removeAt(index);

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(deletedSuccessfully),
                        showCloseIcon: true,
                        backgroundColor: Color(0xFF00C853),
                      ));
                      rebuildUi();
                    });
                    Navigator.of(context).pop();
                  },
                  child: const Text(yes)),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(no))
            ],
          );
        });
  }

  void addPatternOfPlay() async {
    await _navigationService.navigateToPatternOfPlayDetailView(
      patternOfPlay: null,
    );
    await futureToRun();
  }

  void execPatternsOfPlay(int index) async {
    await _navigationService.navigateToPatternOfPlayExecutionView(
      patternOfPlay: patternsOfPlay.elementAt(index),
    );
    await futureToRun();
  }

  void editPatternsOfPlay(int index) async {
    await _navigationService.navigateToPatternOfPlayDetailView(
      patternOfPlay: patternsOfPlay.elementAt(index),
    );
    await futureToRun();
  }
}
