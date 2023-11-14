import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';
import '../../../app/app.locator.dart';

class PlayerDetailViewModel extends FutureViewModel
    with FormStateHelper
    implements FormViewModel {
  final _service = locator<PlayerService>();
  final _navigationService = locator<NavigationService>();

  List<SoccerPositionEnum> actualSoccerPositionsEnum = [];
  PreferredFootEnum actualPreferredFootEnum = PreferredFootEnum.left;

  late PlayerModel tempPlayer = PlayerModel(
    //TODO REVER SE NECESSARIO
    idPlayer: "",
    namePlayer: "",
    nicknamePlayer: "",
    preferredPositionsPlayer: [],
    preferredFootPlayer: PreferredFootEnum.left,
  );
  bool isEditing = false;

  void getPlayer(PlayerModel? playerModel) async {
    if (playerModel != null) {
      isEditing = true;
      tempPlayer = playerModel;
      actualSoccerPositionsEnum = tempPlayer.preferredPositionsPlayer!;
      actualPreferredFootEnum = tempPlayer.preferredFootPlayer!;
    } else {
      tempPlayer = PlayerModel(
        idPlayer: "",
        namePlayer: "",
        nicknamePlayer: "",
        preferredPositionsPlayer: [],
        preferredFootPlayer: PreferredFootEnum.left,
      );
    }

    rebuildUi();
  }

  @override
  Future futureToRun() async {
    getPlayer(_navigationService.currentArguments.playerModel);
  }

  void controllerNameInput(String text) {
    tempPlayer.namePlayer = text;
  }

  void controllerNickNameInput(String text) {
    tempPlayer.nicknamePlayer = text;
  }

  void controllerPositionsPlayerDropDown(List<SoccerPositionEnum> positions) {
    tempPlayer.preferredPositionsPlayer = positions;
  }

  void controllerPreferredFootPlayerDropDown(PreferredFootEnum? foot) {
    if (foot != null) {
      tempPlayer.preferredFootPlayer = foot;
    }
  }

  submit() {
    if (isEditing) {
      _service.update(tempPlayer);
    } else {
      _service.put(tempPlayer);
    }
    _navigationService.back();
    rebuildUi();
  }
}
