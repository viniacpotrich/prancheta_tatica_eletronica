import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/enum/preferred_foot_enum.dart';
import 'package:tactical_e_clipboard/model/player_model.dart';
import 'package:tactical_e_clipboard/ui/views/player_detail/player_detail_view.form.dart';
import '../../../enum/soccer_position_enum.dart';
import '../../common/app_strings.dart';
import 'player_detail_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'namePlayerInput'),
  FormTextField(name: 'nicknamePlayerInput'),
  FormDropdownField(
    name: "preferredPositionsPlayer",
    items: [
      StaticDropdownItem(title: goalkeeper, value: '1'),
      StaticDropdownItem(title: centerBack, value: '2'),
      StaticDropdownItem(title: rightBack, value: '3'),
      StaticDropdownItem(title: leftBack, value: '4'),
      StaticDropdownItem(title: wingBack, value: '5'),
      StaticDropdownItem(title: sweeper, value: '6'),
      StaticDropdownItem(title: defensiveMidfielder, value: '7'),
      StaticDropdownItem(title: centralMidfielder, value: '8'),
      StaticDropdownItem(title: attackingMidfielder, value: '9'),
      StaticDropdownItem(title: rightMidfielder, value: '10'),
      StaticDropdownItem(title: leftMidfielder, value: '11'),
      StaticDropdownItem(title: rightWinger, value: '12'),
      StaticDropdownItem(title: leftWinger, value: '13'),
      StaticDropdownItem(title: forward, value: '14'),
      StaticDropdownItem(title: striker, value: '15'),
    ],
  ),
  FormDropdownField(
    name: "preferredFootPlayer",
    items: [
      StaticDropdownItem(title: left, value: '1'),
      StaticDropdownItem(title: right, value: '2'),
    ],
  ),
])
class PlayerDetailView extends StackedView<PlayerDetailViewModel>
    with $PlayerDetailView {
  const PlayerDetailView({this.playerModel, Key? key}) : super(key: key);

  final PlayerModel? playerModel;

  @override
  void onViewModelReady(viewModel) {
    syncFormWithViewModel(viewModel);
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
        title: const Text(playerDetail),
        actions: [
          ElevatedButton(
            onPressed: viewModel.submit,
            child: const Icon(Icons.check),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          children: [
            const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: fullName,
              ),
              initialValue: viewModel.tempPlayer.namePlayer,
              onChanged: (value) => viewModel.controllerNameInput(
                value,
              ),
            ),
            const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: nickname,
              ),
              initialValue: viewModel.tempPlayer.nicknamePlayer,
              onChanged: (value) => viewModel.controllerNickNameInput(
                value,
              ),
            ),
            const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
            MultiSelectDialogField(
              buttonText: const Text(preferredPosition),
              title: const Text(selectPreferedPositions),
              initialValue: viewModel.actualSoccerPositionsEnum,
              items: SoccerPositionEnum.values
                  .toList()
                  .map((val) => MultiSelectItem(
                        val,
                        val.toString(),
                      ))
                  .toList(),
              listType: MultiSelectListType.LIST,
              onConfirm: (values) {
                viewModel.controllerPositionsPlayerDropDown(values);
              },
            ),
            const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
            DropdownButtonFormField(
              value: viewModel.actualPreferredFootEnum,
              icon: const Icon(Icons.arrow_downward),
              decoration: const InputDecoration(
                labelText: selectPreferredFoot,
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
            const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
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
