import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'team_detail_viewmodel.dart';

class TeamDetailView extends StackedView<TeamDetailViewModel> {
  const TeamDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TeamDetailViewModel viewModel,
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
  TeamDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamDetailViewModel();
}
