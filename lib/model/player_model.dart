import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';

class PlayerModel {
  String? idPlayer;
  String namePlayer = '';
  String nicknamePlayer = '';
  List<SoccerPositionEnum> preferredPositionsPlayer;
  PreferredFootEnum preferredFootPlayer;

  PlayerModel(
    this.idPlayer,
    this.namePlayer,
    this.nicknamePlayer,
    this.preferredPositionsPlayer,
    this.preferredFootPlayer,
  );

  Map<String, Object?> toMap() {
    return {
      'idPlayer': idPlayer?.toString(),
      'namePlayer': namePlayer,
      'nicknamePlayer': nicknamePlayer,
      'preferredFootPlayer': preferredFootPlayer.index
    };
  }
}
