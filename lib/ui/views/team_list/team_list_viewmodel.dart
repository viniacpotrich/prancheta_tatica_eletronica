import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';

class TeamListViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();

  List<TeamModel> teams = [];

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    TeamService teamService = TeamService();
    teamService.getAll().then((value) {
      teams = value;
      rebuildUi();
    });
  }

  void addTeam() {
    _navigationService.navigateToTeamDetailView(
      teamModel: null,
    );
  }

  void editTeam(int index) {
    _navigationService.navigateToTeamDetailView(
      teamModel: teams.elementAt(index),
    );
  }

  void deleteTeam(int index) {
    TeamService teamService = TeamService();
    teamService.delete(teams.elementAt(index).idTeam!).then((_) {
      teams.removeAt(index); //TODO consultar denovo
      rebuildUi();
    });
  }
}
