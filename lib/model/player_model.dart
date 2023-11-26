import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/enum/soccer_position_enum.dart';

import '../ui/common/app_strings.dart';

class PlayerModel {
  String? idPlayer;
  String? namePlayer;
  String? nicknamePlayer;
  List<SoccerPositionEnum>? preferredPositionsPlayer = [];
  PreferredFootEnum? preferredFootPlayer;

  PlayerModel({
    this.idPlayer,
    this.namePlayer = '',
    this.nicknamePlayer = '',
    this.preferredPositionsPlayer,
    this.preferredFootPlayer,
  });

  Map<String, Object?> toMap() {
    return {
      'idPlayer': idPlayer?.toString(),
      'namePlayer': namePlayer,
      'nicknamePlayer': nicknamePlayer,
      'preferredFootPlayer': preferredFootPlayer!.index
    };
  }

  static PlayerModel fromMap(Map<String, dynamic> map) {
    return PlayerModel(
      idPlayer: map['idPlayer'],
      namePlayer: map['namePlayer'],
      nicknamePlayer: map['nicknamePlayer'],
      preferredPositionsPlayer:
          map['positions'] == null ? [] : convertPositions(map['positions']),
      preferredFootPlayer: PreferredFootEnum.values[map['preferredFootPlayer']],
    );
  }

  static List<SoccerPositionEnum> convertPositions(String positions) {
    return positions.split(',').map((position) {
      int index = int.parse(position.trim());
      if (index < 0 || index >= SoccerPositionEnum.values.length) {
        throw ArgumentError('$invalidPosition: $position');
      }
      return SoccerPositionEnum.values[index];
    }).toList();
  }
}
