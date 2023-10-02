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

  void controllerNameInput(String text) {
    print("palyer controller name  = $text");
  }

  void controllerNickNameInput(String text) {
    print("palyer controller nick name  = $text");
  }

  void controllerPositionsPlayerDropDown(String? text) {
    if (text != null && text.isNotEmpty) {
      //TODO
      print(text);
    }
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
