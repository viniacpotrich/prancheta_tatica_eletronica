import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.dialogs.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/model/settings.dto.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_service.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';

import '../../../app/app.locator.dart';
import '../../../services/formation_service.dart';
import '../../../services/team_service.dart';

class PatternOfPlayDetailViewModel extends FutureViewModel {
  final _navigationService = locator<NavigationService>();
  final PatternOfPlayService _patternOfPlayService =
      locator<PatternOfPlayService>();
  final FormationService _formationService = locator<FormationService>();
  final _dialogService = locator<DialogService>();
  final TeamService _teamService = locator<TeamService>();

  late PatternOfPlayModel patternOfPlayModel;

  List<PositionField> positions = [];
  List<FormationModel> formationsView = [];
  List<FormationModel> formations = [];
  List<TeamModel> teams = [];

  DateTime? startDate;
  DateTime? endDate;

  int selected = 0;
  bool isEditing = false;

  Map<String, String> formationsMap = {};
  Map<String, String> teamsMap = {};
  late Function onChangeSettingsFormations;
  late Function onChangeSettingsTeam;
  String? actualFormation = '';
  String? actualTeam = '';

  void submit(context) {
    patternOfPlayModel.team =
        teams.firstWhere((element) => element.idTeam == actualTeam);
    patternOfPlayModel.dateStart = startDate;
    patternOfPlayModel.dateEnd = endDate;
    patternOfPlayModel.formations = formationsView;

    if (isEditing) {
      _patternOfPlayService
          .update(patternOfPlayModel)
          .then((value) => ScaffoldMessenger.of(context)
              .showSnackBar(getSuccessSnackBar(updatedSuccessfully)))
          .whenComplete(() => _navigationService.back());
    } else {
      _patternOfPlayService
          .put(patternOfPlayModel)
          .then((value) => ScaffoldMessenger.of(context)
              .showSnackBar(getSuccessSnackBar(createdSuccessfully)))
          .whenComplete(() => _navigationService.back());
    }
  } //salvar

  SnackBar getSuccessSnackBar(String msg) {
    return SnackBar(
      content: Text(msg),
      showCloseIcon: true,
      backgroundColor: const Color(0xFF00C853),
    );
  }

  @override
  Future futureToRun() async {
    getPatternOfPlay(_navigationService.currentArguments.patternOfPlay);
    onChangeSettingsFormations = onChangedSelectFormation;
    onChangeSettingsTeam = onChangedSelectTeam;
    await getAllFormations();
    await getAllTeams();
  }

  void onChangedSelectFormation(String? key) {
    actualFormation = key;
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

  void addFormation() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.formationSettings,
      title: settings,
      data: SettingsDto(
        selected: actualFormation,
        label: selectFormation,
        onCallback: onChangeSettingsFormations,
        map: formationsMap,
      ),
    );

    for (var element in formations) {
      if (element.idFormation == actualFormation) {
        formationsView.add(element);
      }
    }

    rebuildUi();
  }

  Future<void> getAllFormations() async {
    formations = await _formationService.getAll();
    for (var element in formations) {
      formationsMap.addAll({element.idFormation!: element.idFormation!});
    }
    actualFormation = formationsMap.keys.first;
  }

  Future<void> getAllTeams() async {
    teams = await _teamService.getAll();

    for (var element in teams) {
      teamsMap.addAll({element.idTeam!: element.nameTeam!});
    }
    if (actualTeam == '') {
      actualTeam = patternOfPlayModel.team?.idTeam ?? teamsMap.keys.first;
    }
  }

  void removeField(int index) {
    if (selected == index) {
      selected--;
      if (selected < 0) {
        selected = 0;
      }
    }
    formationsView.removeAt(index);
    rebuildUi();
  }

  void changeSelected(index) {
    selected = index;
    rebuildUi();
  }

  void onChangedSelectTeam(String? key) {
    actualTeam = key;
  }

  void getPatternOfPlay(PatternOfPlayModel? patternOfPlay) {
    if (patternOfPlay != null) {
      isEditing = true;
      patternOfPlayModel = patternOfPlay;
      startDate = patternOfPlay.dateStart;
      endDate = patternOfPlay.dateEnd;
      formationsView = patternOfPlay.formations ?? [];
    } else {
      patternOfPlayModel = PatternOfPlayModel();
    }

    rebuildUi();
  }
}
