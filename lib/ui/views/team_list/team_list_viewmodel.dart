import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';

class TeamListViewModel extends FutureViewModel {
  final TeamService _teamService = locator<TeamService>();
  final _navigationService = locator<NavigationService>();

  List<TeamModel> teams = [];

  @override
  Future futureToRun() async {
    WidgetsBinding.instance.addPostFrameCallback((_) => populate());
  }

  void populate() {
    _teamService.getAll().then((value) {
      teams = value;
      rebuildUi();
    });
  }

  Future<void> addTeam() async {
    await _navigationService.navigateToTeamDetailView(
      teamModel: null,
    );
    await futureToRun();
  }

  Future<void> editTeam(int index) async {
    await _navigationService.navigateToTeamDetailView(
      teamModel: teams.elementAt(index),
    );
    await futureToRun();
  }

  void deleteTeam(int index, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text(pleaseConfirm),
          content: const Text(deleteTeamConfirmation),
          actions: [
            TextButton(
                onPressed: () {
                  _teamService.delete(teams.elementAt(index).idTeam!).then((_) {
                    teams.removeAt(index);
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
      },
    );
  }
}
