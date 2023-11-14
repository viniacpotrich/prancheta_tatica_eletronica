import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MovableItemModel extends BaseViewModel {
  double xPosition = 0;
  double yPosition = 0;

  onChangePosition(DragUpdateDetails tapInfo) {
    xPosition += tapInfo.delta.dx;
    yPosition += tapInfo.delta.dy;
    rebuildUi();
  }
}
