import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';

class PlayerListViewModel extends FutureViewModel {
  final PlayerService _playerService = locator<PlayerService>();
  final _navigationService = locator<NavigationService>();

  late List<PlayerModel> players = [];

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    _playerService.getAll().then((value) {
      players = value;
      rebuildUi();
    });
  }

  void editPlayer(int index) async {
    await _navigationService.navigateToPlayerDetailView(
      playerModel: players.elementAt(index),
    );
    await futureToRun();
  }

  void deletePlayer(int index) {
    _playerService.delete(players.elementAt(index).idPlayer!).then((_) {
      players.removeAt(index);
      rebuildUi();
    });
  }

  Future<void> addPlayer() async {
    await _navigationService.navigateToPlayerDetailView(
      playerModel: null,
    );
    await futureToRun();
  }
}
