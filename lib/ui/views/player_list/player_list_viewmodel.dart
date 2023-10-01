import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PlayerListViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();

  late List<PlayerModel> players;

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    players = [
      PlayerModel(
        "namePlayer 1",
        "nicknamePlayer 1",
        [SoccerPositionEnum.attackingMidfielder],
        PreferredFootEnum.left,
      ),
      PlayerModel(
        "namePlayer 2",
        "nicknamePlayer 2",
        [SoccerPositionEnum.attackingMidfielder],
        PreferredFootEnum.left,
      ),
      PlayerModel(
        "namePlayer 3",
        "nicknamePlayer 3",
        [SoccerPositionEnum.attackingMidfielder],
        PreferredFootEnum.left,
      ),
      PlayerModel(
        "namePlayer 4",
        "nicknamePlayer 4",
        [SoccerPositionEnum.attackingMidfielder],
        PreferredFootEnum.left,
      ),
    ];
  }

  void editPlayer(int index) {
    _navigationService.navigateToPlayerDetailView(
      playerModelID: players.elementAt(index).idPlayer!,
    );
  }

  void deletePlayer(int index) {
    players.removeAt(index);
    //TODO apagar do banco e repesquisar
    rebuildUi();
  }
}
