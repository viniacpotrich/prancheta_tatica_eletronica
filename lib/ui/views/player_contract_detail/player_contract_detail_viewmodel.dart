import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/player_contract_service.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';

class PlayerContractDetailViewModel extends FutureViewModel
    with FormStateHelper
    implements FormViewModel {
  final _navigationService = locator<NavigationService>();
  final TeamService _teamService = locator<TeamService>();
  final PlayerService _playerService = locator<PlayerService>();
  final PlayerContractService _playerContractService =
      locator<PlayerContractService>();

  List<TeamModel> teams = [];
  List<PlayerModel> palyers = [];

  Map<String, String> playersMap = {};
  Map<String, String> teamsMap = {};
  String? actualPlayer = '';
  String? actualTeam = '';

  bool isEditing = false;
  late PlayerContractModel playerContractTemp;

  void selectDate() async {
    var backArguments =
        await _navigationService.navigateToDatePickerWidgetView();
    playerContractTemp.startDate = backArguments[0];
    playerContractTemp.endDate = backArguments[1];
    rebuildUi();
  }

  @override
  Future futureToRun() async {
    getPlayerContract(_navigationService.currentArguments.playerContractModel);
    await getAllTeams();
    await getAllPlayers();
    rebuildUi();
  }

  void getPlayerContract(PlayerContractModel? playerContract) {
    if (playerContract != null) {
      isEditing = true;
      playerContractTemp = playerContract;
    } else {
      playerContractTemp = PlayerContractModel();
    }
  }

  void onChangedSelectTeam(String? key) {
    actualTeam = key;
  }

  void onChangedSelectPlayer(String? key) {
    actualPlayer = key;
  }

  Future<void> getAllTeams() async {
    _teamService.getAll().then((value) {
      teams = value;
      for (var element in value) {
        teamsMap.addAll({element.idTeam!: element.nameTeam!});
      }
      if (isEditing) {
        actualTeam = playerContractTemp.team!.idTeam;
      }
    });
  }

  Future<void> getAllPlayers() async {
    _playerService.getAll().then((value) {
      palyers = value;
      for (var element in value) {
        playersMap.addAll({element.idPlayer!: element.namePlayer});
      }
      if (isEditing) {
        actualPlayer = playerContractTemp.idPlayer;
      }
    });
  }

  void submit() {
    playerContractTemp.team =
        teams.firstWhere((element) => element.idTeam == actualTeam);
    playerContractTemp.idPlayer = actualPlayer;
    _playerContractService.update(playerContractTemp);
    _navigationService.back();
  }
}
