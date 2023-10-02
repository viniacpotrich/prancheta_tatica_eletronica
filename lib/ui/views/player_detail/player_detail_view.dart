import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/ui/views/player_detail/player_detail_view.form.dart';
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
class PlayerDetailView extends StackedView<PlayerDetailViewModel>
    with $PlayerDetailView {
  const PlayerDetailView({required this.playerModelID, Key? key})
      : super(key: key);

  final Uuid playerModelID;

  @override
  void onViewModelReady(viewModel) {
    syncFormWithViewModel(viewModel);
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
        actions: [
          ElevatedButton(
            onPressed: viewModel.submit,
            child: Icon(Icons.check),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: NamePlayerInputValueKey,
              ),
              controller: namePlayerInputController,
              onChanged: (value) => viewModel.controllerNameInput(
                value,
                // namePlayerInputController.text
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: NicknamePlayerInputValueKey,
              ),
              controller: nicknamePlayerInputController,
              onChanged: (value) => viewModel.controllerNickNameInput(
                value,
              ),
            ),
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              decoration: const InputDecoration(
                labelText: "Select an option",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              onChanged: (value) =>
                  viewModel.controllerPositionsPlayerDropDown(value),
              items: PreferredPositionsPlayerValueToTitleMap.values
                  .toList()
                  .map((val) => DropdownMenuItem(
                        value: val,
                        child: Text("${val}"),
                      ))
                  .toList(),
            ),
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              decoration: const InputDecoration(
                labelText: "Selecione o pé preferido",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              onChanged: (value) =>
                  viewModel.controllerPreferredFootPlayerDropDown(value),
              items: PreferredFootPlayerValueToTitleMap.values
                  .toList()
                  .map(
                    (val) => DropdownMenuItem(
                      value: val,
                      child: Text(val),
                    ),
                  )
                  .toList(),
            ),
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              decoration: const InputDecoration(
                labelText: "Selecione o Time",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              onChanged: (value) =>
                  viewModel.controllerPositionsPlayerDropDown(value),
              items: PreferredFootPlayerValueToTitleMap
                  .values // TODO buscar os times
                  .toList()
                  .map((val) => DropdownMenuItem(
                        value: val,
                        child: Text("${val}"),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PlayerDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerDetailViewModel();
}
