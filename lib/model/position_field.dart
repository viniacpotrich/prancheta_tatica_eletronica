import 'dart:ffi';

import 'package:tactical_e_clipboard/model/player_model.dart';

class PositionField {
  PlayerModel? playerModel;
  Float? posX;
  Float? posY;

  PositionField(
    this.playerModel,
    this.posX,
    this.posY,
  );
}
