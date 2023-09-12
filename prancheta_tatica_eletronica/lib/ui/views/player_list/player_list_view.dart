import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'player_list_viewmodel.dart';

class PlayerListView extends StackedView<PlayerListViewModel> {
  const PlayerListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PlayerListViewModel viewModel,
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
  PlayerListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerListViewModel();
}
