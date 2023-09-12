import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'team_list_viewmodel.dart';

class TeamListView extends StackedView<TeamListViewModel> {
  const TeamListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TeamListViewModel viewModel,
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
  TeamListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamListViewModel();
}
