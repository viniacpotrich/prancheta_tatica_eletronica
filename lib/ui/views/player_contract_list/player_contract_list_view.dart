import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_strings.dart';
import 'player_contract_list_viewmodel.dart';

class PlayerContractListView extends StackedView<PlayerContractListViewModel> {
  const PlayerContractListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PlayerContractListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text(
          contracts,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () => viewModel.addPlayerContract(),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: viewModel.playerContracts.length,
        itemBuilder: (context, index) => ListTile(
          title: Row(
            children: [
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.playerContracts[index].team!.nameTeam!,
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.playerContracts[index].startDate.toString(),
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.playerContracts[index].endDate.toString(),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.editPlayerContract(index),
                  child: const Icon(Icons.edit),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.deletePlayerContract(index),
                  child: const Icon(Icons.delete),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PlayerContractListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerContractListViewModel();
}
