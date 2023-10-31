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
      appBar: AppBar(
        title: const Text("Players"),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.search),
          ),
               ElevatedButton(
            onPressed: () => viewModel.addPlayer(),
            child: Icon(Icons.add),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView.builder(
          itemCount: viewModel.players.length,
          itemBuilder: (context, index) => ListTile(
            title: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Text(viewModel.players[index].namePlayer),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () => viewModel.editPlayer(index),
                    child: const Icon(Icons.edit),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () => viewModel.deletePlayer(index),
                    child: const Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  PlayerListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PlayerListViewModel();
}
