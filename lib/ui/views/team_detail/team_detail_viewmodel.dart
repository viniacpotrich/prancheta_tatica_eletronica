import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';

class TeamDetailViewModel extends FutureViewModel
    with FormStateHelper
    implements FormViewModel {
  final _navigationService = locator<NavigationService>();
  late TeamModel teamModelTemp;
  late Color picker1Color;
  late Color picker2Color;
  bool isEditing = false;

  @override
  Future futureToRun() async {
    getTeam(_navigationService.currentArguments.teamModel);
  }

  void getTeam(TeamModel? teamModel) {
    if (teamModel != null) {
      isEditing = true;
      teamModelTemp = teamModel;
      picker1Color = Color(int.parse(teamModelTemp.colorPrimaryTeam!));
      picker2Color = Color(int.parse(teamModelTemp.colorSecondaryTeam!));
    } else {
      teamModelTemp = TeamModel();
      picker1Color = const Color.fromARGB(0xFF, 0x33, 0x33, 0x33);
      picker2Color = const Color.fromARGB(0xFF, 0x33, 0x33, 0x33);
    }
  }

  void controllerNameInput(String text) {
    teamModelTemp.nameTeam = text;
  }

  void controllerNickNameInput(String text) {
    teamModelTemp.nicknameTeam = text;
  }

  void controllerCitiesTeamInput(String text) {
    teamModelTemp.nicknameTeam = text;
  }

  void controllerColor1Team(Color color) {
    picker1Color = color;
    _navigationService.back();
    rebuildUi();
  }

  void controllerColor2Team(Color color) {
    picker2Color = color;
    _navigationService.back();
    rebuildUi();
  }

  SnackBar getSuccessSnackBar(String msg) {
    return SnackBar(
      content: Text(msg),
      showCloseIcon: true,
      backgroundColor: Color(0xFF00C853),
    );
  }

  void submit(BuildContext context) {
    teamModelTemp.colorPrimaryTeam = picker1Color.value.toString();
    teamModelTemp.colorSecondaryTeam = picker2Color.value.toString();
    teamModelTemp.cityTeam = "";
    TeamService teamService = TeamService();
    if (isEditing) {
      teamService.update(teamModelTemp).then((value) =>
          ScaffoldMessenger.of(context)
              .showSnackBar(getSuccessSnackBar("Updated Succesfully!")));
      ;
    } else {
      teamService.put(teamModelTemp).then((value) =>
          ScaffoldMessenger.of(context)
              .showSnackBar(getSuccessSnackBar("Created Succesfully!")));
    }
    _navigationService.back();
    rebuildUi();
  }

  void showInSnackBar(ScaffoldMessengerState scaffoldContext, String value) {
    scaffoldContext.showSnackBar(SnackBar(content: Text(value)));
  }

  void pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      File file = File(result.files.single.path!);
      var base64 = await TeamModel.fileToBase64(file);
      teamModelTemp.logoTeam = await TeamModel.base64ToImage(base64);
      rebuildUi();
    } else {
      // User canceled the picker
    }
  }

  Widget getImage() {
    if (teamModelTemp.logoTeam == null) {
      return InkWell(onTap: () => pickFile(), child: const Placeholder());
    } else {
      return InkWell(
          onTap: () => pickFile(),
          child: RawImage(
            image: teamModelTemp.logoTeam,
            fit: BoxFit.cover,
          ));
    }
  }

  Future<void> showColorPicker(context, picker, onChengePicker) async {
    return showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Pick a color!'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              SlidePicker(
                pickerColor: picker,
                onColorChanged: (color) => picker = color,
                colorModel: ColorModel.rgb,
                enableAlpha: false,
                showParams: true,
                showIndicator: true,
                indicatorBorderRadius:
                    const BorderRadius.vertical(top: Radius.circular(25)),
              ),
              ElevatedButton(
                onPressed: () {
                  onChengePicker(picker);
                },
                child: const Icon(
                  Icons.check,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
