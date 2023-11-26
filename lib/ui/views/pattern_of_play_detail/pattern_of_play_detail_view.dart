import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart';

import 'pattern_of_play_detail_viewmodel.dart';

class PatternOfPlayDetailView
    extends StackedView<PatternOfPlayDetailViewModel> {
  const PatternOfPlayDetailView({required this.patternOfPlay, Key? key})
      : super(key: key);
  final PatternOfPlayModel? patternOfPlay;

  @override
  Widget builder(
    BuildContext context,
    PatternOfPlayDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Patterns of Play Detail"),
        actions: [
          IconButton(
            onPressed: viewModel.addFormation,
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: viewModel.play,
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: viewModel.submit,
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  viewModel.widgets[viewModel.selected],
                ],
              ),
            ),
            Expanded(flex: 1, child: Row(children: viewModel.widgets)),
          ],
        ),
      ),
    );
  }

  @override
  PatternOfPlayDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PatternOfPlayDetailViewModel();
}
