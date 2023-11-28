import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/ui/widgets/common/movable_item/movable_item.dart';

class FieldViewModel extends FutureViewModel {
  List<Widget> movableItems = [];
  int index = 0;
  late Image image;

  late Function callback;
  late List<PositionField> positions;

  @override
  Future futureToRun() async {
    image = Image.asset(
      "assets/field.jpg",
      scale: 0.1,
      fit: BoxFit.fill,
    );
    Completer completer = Completer();
    image.image
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((image, synchronousCall) {
      print('$image');
    }));
  }

  void saveCallback(List<PositionField> pos, Function function) {
    positions = pos;
    callback = function;

    refreshPostions();
  }

  void refreshPostions() {
    movableItems = [];
    for (int i = 0; i < positions.length; i++) {
      addMovable(
        positions[i].posX!,
        positions[i].posY!,
        i,
        i,
        Colors.amber,
        Colors.white,
        callback,
      );
    }
  }

  void addMovable(
    double posx,
    double posy,
    int index,
    int number,
    Color color1,
    Color color2,
    Function callback,
  ) {
    movableItems.add(
      MovableItem(
        posx: posx,
        posy: posy,
        index: index,
        number: number,
        color1: color1,
        color2: color2,
        callback: callback,
      ),
    );
  }
}
