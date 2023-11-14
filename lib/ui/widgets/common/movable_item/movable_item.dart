import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'movable_item_model.dart';

class MovableItem extends StackedView<MovableItemModel> {
  const MovableItem({
    required this.number,
    required this.color1,
    required this.color2,
    super.key,
  });

  final int number;
  final Color color1;
  final Color color2;

  @override
  Widget builder(
    BuildContext context,
    MovableItemModel viewModel,
    Widget? child,
  ) {
    return Positioned(
      top: viewModel.yPosition,
      left: viewModel.xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) => viewModel.onChangePosition(tapInfo),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: color1,
              ),
              width: 50,
              height: 50,
            ),
            Text(
              '${number}',
              style: TextStyle(color: color2),
            ),
          ],
        ),
      ),
    );
  }

  @override
  MovableItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      MovableItemModel();
}
