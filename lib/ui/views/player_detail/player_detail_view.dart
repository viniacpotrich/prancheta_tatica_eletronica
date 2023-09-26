import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'player_detail_viewmodel.dart';

class PlayerDetailView extends StackedView<PlayerDetailViewModel> {
  const PlayerDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PlayerDetailViewModel viewModel,
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
  PlayerDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerDetailViewModel();
}
