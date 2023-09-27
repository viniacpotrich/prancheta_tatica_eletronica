import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';
import 'package:uuid/uuid.dart';

class PlayerModel {
  Uuid? idPlayer;
  String namePlayer = '';
  String nicknamePlayer = '';
  List<SoccerPositionEnum> preferredPositionsPlayer;
  PreferredFootEnum preferredFootPlayer;

  PlayerModel(
    this.namePlayer,
    this.nicknamePlayer,
    this.preferredPositionsPlayer,
    this.preferredFootPlayer,
  );
}
