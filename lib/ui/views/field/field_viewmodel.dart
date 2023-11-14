import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/ui/widgets/common/movable_item/movable_item.dart';

class FieldViewModel extends FutureViewModel {
  List<Widget> movableItems = [];
  int index = 0;
  late Image image;
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

  void addMovable() {
    movableItems.add(
      MovableItem(
        number: index,
        color1: Colors.amber,
        color2: Colors.white,
      ),
    );
    index++;
    rebuildUi();
  }
}
