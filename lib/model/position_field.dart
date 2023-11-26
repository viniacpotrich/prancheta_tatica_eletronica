import 'package:tactical_e_clipboard/model/player_model.dart';

import '../app/app.locator.dart';
import '../services/player_service.dart';

class PositionField {
  PlayerModel? playerModel;
  double? posX;
  double? posY;

  PositionField({
    this.playerModel,
    this.posX,
    this.posY,
  });

  Map<String, Object?> toJson() {
    return {
      'idPlayer': playerModel!.idPlayer.toString(),
      'posX': posX,
      'posY': posY,
    };
  }

  static Future<PositionField> fromJson(Map<String, dynamic> json) async {
    final _playerService = locator<PlayerService>();
    PlayerModel? player = await _playerService.get(json['idPlayer']);
    return PositionField(
      playerModel: player,
      posX: json['posX'],
      posY: json['posY'],
    );
  }
}
