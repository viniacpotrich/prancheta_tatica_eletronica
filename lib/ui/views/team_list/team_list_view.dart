import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'team_list_viewmodel.dart';

class TeamListView extends StackedView<TeamListViewModel> {
  const TeamListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TeamListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          "Times",
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.search),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: viewModel.teams.length,
        itemBuilder: (context, index) => ListTile(
          title: Row(
            children: [
              Expanded(
                flex: 8,
                child: Text(viewModel.teams[index].nameTeam),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.editTeam(index),
                  child: const Icon(Icons.edit),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.deleteTeam(index),
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
  TeamListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamListViewModel();
}
