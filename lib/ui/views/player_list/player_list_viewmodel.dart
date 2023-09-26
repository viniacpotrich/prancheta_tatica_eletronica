import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';

class PlayerListViewModel extends FutureViewModel {
  late List<PlayerModel> players;
  final service = locator<PlayerService>();

  @override
  Future futureToRun() async {
    populate();
  }

  void populate() {
    players = [];
  }

//TODO
  PlayerListViewModel() {
    teste();
  }

  void teste() {
    service.getAll();
  }
}
