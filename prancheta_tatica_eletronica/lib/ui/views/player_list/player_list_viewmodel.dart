import 'package:prancheta_tatica_eletronica/app/app.locator.dart';
import 'package:prancheta_tatica_eletronica/model/player_model.dart';
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
    players = [];
  }

//TODO
  PlayerListViewModel() {
    teste();
  }

  void teste() {
    print(_navigationService.currentRoute);
    print(_navigationService.currentArguments);
  }
}
