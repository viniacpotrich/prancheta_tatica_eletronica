import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/ui/views/player_detail/player_detail_view.form.dart';

import '../../../enum/soccer_position_enum.dart';
import 'player_detail_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'namePlayerInput'),
  FormTextField(name: 'nicknamePlayerInput'),
  FormDropdownField(
    name: "preferredPositionsPlayer",
    items: [
      StaticDropdownItem(title: "Goalkeeper", value: '1'),
      StaticDropdownItem(title: "Center Back", value: '2'),
      StaticDropdownItem(title: "Right Back", value: '3'),
      StaticDropdownItem(title: "Left Back", value: '4'),
      StaticDropdownItem(title: "Wing Back", value: '5'),
      StaticDropdownItem(title: "Sweeper", value: '6'),
      StaticDropdownItem(title: "Defensive Midfielder", value: '7'),
      StaticDropdownItem(title: "Central Midfielder", value: '8'),
      StaticDropdownItem(title: "Attacking Midfielder", value: '9'),
      StaticDropdownItem(title: "Right Midfielder", value: '10'),
      StaticDropdownItem(title: "Left Midfielder", value: '11'),
      StaticDropdownItem(title: "Right Winger", value: '12'),
      StaticDropdownItem(title: "Left Winger", value: '13'),
      StaticDropdownItem(title: "Forward", value: '14'),
      StaticDropdownItem(title: "Striker", value: '15'),
    ],
  ),
  FormDropdownField(
    name: "preferredFootPlayer",
    items: [
      StaticDropdownItem(title: 'Left', value: '1'),
      StaticDropdownItem(title: 'Right', value: '2'),
    ],
  ),
])
class PlayerDetailView extends StackedView<PlayerDetailViewModel>
    with $PlayerDetailView {
  const PlayerDetailView({this.playerModelID, Key? key})
      : super(key: key);

  final String? playerModelID;

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
                labelText: "Select a position",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              onChanged: (value) =>
                  viewModel.controllerPositionsPlayerDropDown(value),
              items: SoccerPositionEnum.values
                  .toList()
                  .map((val) => DropdownMenuItem(
                        value: val,
                        child: Text(val.toString()),
                      ))
                  .toList(),
            ),
            DropdownButtonFormField(
              icon: const Icon(Icons.arrow_downward),
              decoration: const InputDecoration(
                labelText: "Selecione preferred foot",
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
              onChanged: (value) =>
                  viewModel.controllerPreferredFootPlayerDropDown(value),
              items: PreferredFootEnum.values
                  .toList()
                  .map(
                    (val) => DropdownMenuItem(
                      value: val,
                      child: Text(val.toString()),
                    ),
                  )
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
