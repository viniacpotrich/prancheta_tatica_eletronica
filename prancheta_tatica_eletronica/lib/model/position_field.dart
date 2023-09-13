import 'dart:ffi';

import 'package:prancheta_tatica_eletronica/model/player_model.dart';

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
