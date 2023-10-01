import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:uuid/uuid.dart';

import 'player_detail_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'namePlayerInput'),
  FormTextField(name: 'nicknamePlayerInput'),
  FormDropdownField(
    name: "preferredPositionsPlayer",
    items: [
      StaticDropdownItem(title: "titulo1", value: "1"),
      StaticDropdownItem(title: "titulo2", value: "2"),
      StaticDropdownItem(title: "titulo3", value: "3"),
      StaticDropdownItem(title: "titulo4", value: "4"),
    ],
  ),
  FormDropdownField(
    name: "preferredFootPlayer",
    items: [
      StaticDropdownItem(title: "Right", value: "1"),
      StaticDropdownItem(title: "Left", value: "2"),
    ],
  ),
])
class PlayerDetailView extends StackedView<PlayerDetailViewModel> {
  const PlayerDetailView({required this.playerModelID, Key? key})
      : super(key: key);

  final Uuid playerModelID;

  @override
  void onViewModelReady(viewModel) {
    viewModel.getPlayer(playerModelID);
  }

  @override
  Widget builder(
    BuildContext context,
    PlayerDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Player Detail"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Text("$playerModelID"),
      ),
    );
  }

  @override
  PlayerDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerDetailViewModel();
}
