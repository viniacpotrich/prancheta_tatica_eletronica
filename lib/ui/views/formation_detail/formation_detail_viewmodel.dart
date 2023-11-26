import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.dialogs.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/settings.dto.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/formation_service.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';

class FormationDetailViewModel extends FutureViewModel {
  final _dialogService = locator<DialogService>();
  final TeamService _teamService = locator<TeamService>();
  final PlayerService _playerService = locator<PlayerService>();
  final FormationService _formationService = locator<FormationService>();
  final _navigationService = locator<NavigationService>();

  late FormationModel formationModel;

  List items = ['1', '2', '3', '4'];
  List<PositionField> positions = [];

  late Function onCallback;
  late Function onChangeSettingsTeam;
  late Function onChangeSettingsPlayer;

  DateTime? startDate;
  DateTime? endDate;

  List<TeamModel> teams = [];
  List<PlayerModel> players = [];

  Map<String, String> playersMap = {};
  Map<String, String> teamsMap = {};
  String? actualPlayer = '';
  String? actualTeam = '';

  bool isEditing = false;

  void openSettings() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.formationSettings,
      title: settings,
      data: SettingsDto(
        selected: actualTeam,
        label: selectTeam,
        onCallback: onChangeSettingsTeam,
        map: teamsMap,
      ),
    );
  }

  Future<void> getAllTeams() async {
    teams = await _teamService.getAll();

    for (var element in teams) {
      teamsMap.addAll({element.idTeam!: element.nameTeam!});
    }
    if (actualTeam == '') {
      actualTeam = formationModel.team?.idTeam ?? teamsMap.keys.first;
    }
  }

  Future<void> getAllPlayers() async {
    players = await _playerService.getAll();

    for (var element in players) {
      playersMap.addAll({element.idPlayer!: element.namePlayer!});
    }

    if (actualPlayer == '') {
      actualPlayer = playersMap.keys.first;
    }
  }

  void selectDate() async {
    var backArguments =
        await _navigationService.navigateToDatePickerWidgetView();
    if (backArguments != null) {
      startDate = backArguments[0];
      endDate = backArguments[1];
      rebuildUi();
    }
  }

  void addPositionField() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.formationSettings,
      title: settings,
      data: SettingsDto(
        selected: actualPlayer,
        label: selectPlayer,
        onCallback: onChangeSettingsPlayer,
        map: playersMap,
      ),
    );

    positions.add(
      PositionField(
        playerModel:
            players.firstWhere((element) => element.idPlayer == actualPlayer),
        posX: 0,
        posY: 0,
      ),
    );
    rebuildUi();
  }

  void callback(int index, double xPosition, double yPosition) {
    positions[index].posX = xPosition;
    positions[index].posY = yPosition;
    rebuildUi();
  }

  void submit(BuildContext context) {
    formationModel.team =
        teams.firstWhere((element) => element.idTeam == actualTeam);
    formationModel.dateStart = startDate;
    formationModel.dateEnd = endDate;
    formationModel.positions = positions;

    if (isEditing) {
      _formationService
          .update(formationModel)
          .then((value) => ScaffoldMessenger.of(context)
              .showSnackBar(getSuccessSnackBar(updatedSuccessfully)))
          .whenComplete(() => _navigationService.back());
    } else {
      _formationService
          .put(formationModel)
          .then((value) => ScaffoldMessenger.of(context)
              .showSnackBar(getSuccessSnackBar(createdSuccessfully)))
          .whenComplete(() => _navigationService.back());
    }
  }

  void onChangedSelectTeam(String? key) {
    actualTeam = key;
  }

  void onChangedSelectPlayer(String? key) {
    actualPlayer = key;
  }

  @override
  Future futureToRun() async {
    getFormation(_navigationService.currentArguments.formationModel);
    onCallback = callback;
    onChangeSettingsTeam = onChangedSelectTeam;
    onChangeSettingsPlayer = onChangedSelectPlayer;
  }

  void getFormation(FormationModel? formation) async {
    if (formation != null) {
      isEditing = true;
      formationModel = formation;
      startDate = formation.dateStart;
      endDate = formation.dateEnd;
      positions = formation.positions ?? [];
    } else {
      formationModel = FormationModel();
    }
    await getAllTeams();
    await getAllPlayers();

    rebuildUi();
  }

  SnackBar getSuccessSnackBar(String msg) {
    return SnackBar(
      content: Text(msg),
      showCloseIcon: true,
      backgroundColor: const Color(0xFF00C853),
    );
  }
}
