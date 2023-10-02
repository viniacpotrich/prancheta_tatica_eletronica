import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';
import 'package:uuid/uuid.dart';

class TeamListViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();

  late List<TeamModel> teams;

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    teams = [
      TeamModel(
        "nameTeam 1",
        "nicknameTeam 1",
        "color 1",
        "color 2",
        "city 1",
        null,
      ),
      TeamModel(
        "nameTeam 2",
        "nicknameTeam 2",
        "color 1",
        "color 2",
        "city 2",
        null,
      ),
      TeamModel(
        "nameTeam 3",
        "nicknameTeam 3",
        "color 1",
        "color 2",
        "city 3",
        null,
      ),
      TeamModel(
        "nameTeam 4",
        "nicknameTeam 4",
        "color 1",
        "color 2",
        "city 4",
        null,
      ),
    ];
    // TeamService teamService = TeamService();
    // print(teamService.getAll());
  }

  void editTeam(int index) {
    _navigationService.navigateToTeamDetailView(
      teamModelID:
          teams.elementAt(index).idTeam ?? Uuid(), //TODO remover depois
    );
  }

  void deleteTeam(int index) {
    teams.removeAt(index);
    //TODO apagar do banco e repesquisar
    rebuildUi();
  }
}
