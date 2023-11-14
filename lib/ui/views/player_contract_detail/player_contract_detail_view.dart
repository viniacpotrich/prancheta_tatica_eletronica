import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';
import 'package:tactical_e_clipboard/ui/views/player_contract_detail/player_contract_detail_view.form.dart';

import 'player_contract_detail_viewmodel.dart';

@FormView(fields: [
  FormDropdownField(name: "player", items: [
    StaticDropdownItem(title: "title", value: '1'),
  ]),
  FormDropdownField(name: "team", items: [
    StaticDropdownItem(title: "title", value: '1'),
  ]),
])
class PlayerContractDetailView
    extends StackedView<PlayerContractDetailViewModel>
    with $PlayerContractDetailView {
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
      appBar: AppBar(
        title: const Text(contractDetail),
        actions: [
          IconButton(onPressed: viewModel.submit, icon: const Icon(Icons.check))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          DropdownButtonFormField(
            value: viewModel.actualPlayer,
            icon: const Icon(Icons.arrow_downward),
            decoration: const InputDecoration(
              labelText: selectPlayer,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            onChanged: (value) => viewModel.onChangedSelectPlayer(value),
            items: viewModel.playersMap.entries
                .map(
                  (e) => DropdownMenuItem(value: e.key, child: Text(e.value)),
                )
                .toList(),
          ),
          DropdownButtonFormField(
            value: viewModel.actualTeam,
            icon: const Icon(Icons.arrow_downward),
            decoration: const InputDecoration(
              labelText: selectTeam,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            onChanged: (value) => viewModel.onChangedSelectTeam(value),
            items: viewModel.teamsMap.entries
                .map(
                  (e) => DropdownMenuItem(value: e.key, child: Text(e.value)),
                )
                .toList(),
          ),
          ListTile(
            title: Text(viewModel.playerContractTemp.startDate.toString()),
          ),
          ListTile(
            title: Text(viewModel.playerContractTemp.endDate.toString()),
          ),
          ElevatedButton(
            onPressed: viewModel.selectDate,
            child: const Text(selectADate),
          )
        ],
      ),
    );
  }

  @override
  PlayerContractDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerContractDetailViewModel();
}
