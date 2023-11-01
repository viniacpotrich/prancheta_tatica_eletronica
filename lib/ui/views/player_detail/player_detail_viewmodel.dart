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

  late PlayerModel tempPlayer = PlayerModel(
    "",
    "",
    "",
    [],
    PreferredFootEnum.left,
  );
  bool isEditing = false;

  void getPlayer(String? id) async {
    if (id != null) {
      isEditing = true;
      tempPlayer = (await _service.get(id))!;
      rebuildUi();
    } else {
      tempPlayer = PlayerModel(
        "",
        "",
        "",
        [],
        PreferredFootEnum.left,
      );
    }
    rebuildUi();
  }

  @override
  Future futureToRun() async {}

  void controllerNameInput(String text) {
    tempPlayer.namePlayer = text;
  }

  void controllerNickNameInput(String text) {
    tempPlayer.nicknamePlayer = text;
  }

  void controllerPositionsPlayerDropDown(SoccerPositionEnum? position) {
    if (position != null) {
      tempPlayer.preferredPositionsPlayer = [position];
    }
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
