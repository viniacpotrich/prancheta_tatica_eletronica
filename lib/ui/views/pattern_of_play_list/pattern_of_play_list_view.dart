import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pattern_of_play_list_viewmodel.dart';

class PatternOfPlayListView extends StackedView<PatternOfPlayListViewModel> {
  const PatternOfPlayListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PatternOfPlayListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  PatternOfPlayListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PatternOfPlayListViewModel();
}
