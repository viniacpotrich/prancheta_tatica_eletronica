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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () => viewModel.addTeam(),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(
          "Times",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 56),
                itemCount: viewModel.teams.length,
                itemBuilder: (context, index) => ListTile(
                  title: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(viewModel.teams[index].nameTeam!),
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
                          onTap: () => viewModel.deleteTeam(index, context),
                          child: const Icon(Icons.delete),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
