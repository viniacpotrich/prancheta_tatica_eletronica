import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/position_field.dart';

import 'field_viewmodel.dart';

class FieldView extends StackedView<FieldViewModel> {
  const FieldView({
    required this.positions,
    required this.callback,
    Key? key,
  }) : super(key: key);

  final List<PositionField> positions;
  final Function callback;

  @override
  void onViewModelReady(FieldViewModel viewModel) {
    viewModel.saveCallback(positions, callback);
  }

  @override
  Widget builder(
    BuildContext context,
    FieldViewModel viewModel,
    Widget? child,
  ) {
    viewModel.refreshPostions();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        fit: StackFit.expand,
        children: [
          viewModel.image,
          ...viewModel.movableItems,
        ],
      ),
    );
  }

  @override
  FieldViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FieldViewModel();
}
