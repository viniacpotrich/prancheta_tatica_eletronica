import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/services/formation_service.dart';

import '../../common/app_strings.dart';

class FormationListViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();
  final _formationService = locator<FormationService>();

  List<FormationModel> formations = [];

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    _formationService.getAll().then((value) {
      formations = value;
      rebuildUi();
    });
  }

  Future<void> addFormation() async {
    await _navigationService.navigateToFormationDetailView(
      formationModel: null,
    );
    await futureToRun();
  }

  Future<void> editPlayerContract(int index) async {
    await _navigationService.navigateToFormationDetailView(
      formationModel: formations.elementAt(index),
    );
    await futureToRun();
  }

  void deletePlayerContract(int index, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text(pleaseConfirm),
          content: const Text(deleteTeamConfirmation),
          actions: [
            TextButton(
                onPressed: () {
                  _formationService
                      .delete(formations.elementAt(index).idFormation!)
                      .then((_) {
                    formations.removeAt(index);
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
      },
    );
  }
}
