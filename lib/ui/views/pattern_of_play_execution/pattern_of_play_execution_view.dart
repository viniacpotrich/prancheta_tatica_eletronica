import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart';

import 'pattern_of_play_execution_viewmodel.dart';

class PatternOfPlayExecutionView
    extends StackedView<PatternOfPlayExecutionViewModel> {
  const PatternOfPlayExecutionView({required this.patternOfPlay, Key? key})
      : super(key: key);
  final PatternOfPlayModel? patternOfPlay;
  @override
  Widget builder(
    BuildContext context,
    PatternOfPlayExecutionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Patterns of Play Detail"),
        actions: [
          IconButton(
            onPressed: () => viewModel.interate(),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: FieldView(
                positions:
                    viewModel.formationsView[viewModel.index].positions ?? [],
                callback: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PatternOfPlayExecutionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PatternOfPlayExecutionViewModel();
}
