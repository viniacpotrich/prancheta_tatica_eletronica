import 'dart:ui';

import 'package:stacked/stacked.dart';
import 'package:uuid/uuid.dart';

class TeamDetailViewModel extends FutureViewModel
    with FormStateHelper
    implements FormViewModel {
  // create some values
  Color picker1Color = Color(0xff443a49);
  Color picker2Color = Color(0xff443a49);

// ValueChanged<Color> callback
  void changeColor(Color pickerColor, Color color) {
    pickerColor = color;
    rebuildUi();
  }

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
  }

  void getTeam(Uuid uuid) {
    print(uuid);
    //TODO pesquisar o player pelo uuid no banco
  }

  void controllerNameInput(String text) {
    print("team controller name  = $text");
  }

  void controllerNickNameInput(String text) {
    print("team controller nick name  = $text");
  }

  void controllerColor1Team(Color color) {
    print(color);
    changeColor(picker1Color, color);
  }

  void controllerColor2Team(Color color) {
    print(color);
    changeColor(picker2Color, color);
  }

  void controllerPreferredFootPlayerDropDown(String? text) {
    if (text != null && text.isNotEmpty) {
      //TODO
      print(text);
    }
  }

  void controllerTeamDropDown(String? text) {
    if (text != null && text.isNotEmpty) {
      //TODO
      print(text);
    }
  }

  submit() {
    print("submitou");
    //salve
    //retorna
  }
}
