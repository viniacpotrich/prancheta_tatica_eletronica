import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'field_viewmodel.dart';

class FieldView extends StackedView<FieldViewModel> {
  const FieldView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FieldViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.addMovable,
      ),
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
