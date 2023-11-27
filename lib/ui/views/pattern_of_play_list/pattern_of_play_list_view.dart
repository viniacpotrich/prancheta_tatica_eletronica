import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pattern_of_play_list_viewmodel.dart';

class PatternOfPlayListView extends StackedView<PatternOfPlayListViewModel> {
  const PatternOfPlayListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PatternOfPlayListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: viewModel.addPatternOfPlay,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Patterns of Play"),
      ),
      body: ListView.builder(
        itemCount: viewModel.patternsOfPlay.length,
        itemBuilder: (context, index) => ListTile(
          title: Row(
            children: [
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.patternsOfPlay[index].team?.nameTeam ?? "",
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.patternsOfPlay[index].dateEnd.toString(),
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.patternsOfPlay[index].dateEnd.toString(),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.execPatternsOfPlay(index),
                  child: const Icon(Icons.edit),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.editPatternsOfPlay(index),
                  child: const Icon(Icons.edit),
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => viewModel.deletePatternsOfPlay(index, context),
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
  PatternOfPlayListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PatternOfPlayListViewModel();
}
