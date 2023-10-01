import 'package:stacked/stacked.dart';
import 'package:uuid/uuid.dart';

class PlayerDetailViewModel extends FutureViewModel
    with FormStateHelper
    implements FormViewModel {
  void getPlayer(Uuid uuid) {
    print(uuid);
    //TODO pesquisar o player pelo uuid no banco
  }

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
  }

  controllerNameInput(String text) {
    print("controller name  = $text");
  }

  controllerNickNameInput(String text) {
    print("controller nick name  = $text");
  }

  controllerPositionsPlayerDropDown(String? text) {
    if (text != null && text.isNotEmpty) {
      //TODO
      print(text);
    }
  }

  controllerPreferredFootPlayerDropDown(String? text) {
    if (text != null && text.isNotEmpty) {
      //TODO
      print(text);
    }
  }

  controllerTeamDropDown(String? text) {
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
