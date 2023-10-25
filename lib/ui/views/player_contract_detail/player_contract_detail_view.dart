import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';

import 'player_contract_detail_viewmodel.dart';

class PlayerContractDetailView
    extends StackedView<PlayerContractDetailViewModel> {
  const PlayerContractDetailView({
    required this.playerContractModel,
    Key? key,
  }) : super(key: key);

  final PlayerContractModel? playerContractModel;

  @override
  Widget builder(
    BuildContext context,
    PlayerContractDetailViewModel viewModel,
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
  PlayerContractDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerContractDetailViewModel();
}
