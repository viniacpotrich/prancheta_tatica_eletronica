import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pattern_of_play_detail_viewmodel.dart';

class PatternOfPlayDetailView
    extends StackedView<PatternOfPlayDetailViewModel> {
  const PatternOfPlayDetailView({Key? key}) : super(key: key);

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
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  PatternOfPlayDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PatternOfPlayDetailViewModel();
}
