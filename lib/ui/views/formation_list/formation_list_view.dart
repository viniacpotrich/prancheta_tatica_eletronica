import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'formation_list_viewmodel.dart';

class FormationListView extends StackedView<FormationListViewModel> {
  const FormationListView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FormationListViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () => viewModel.addFormation(),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Formation"),
      ),
      body: ListView.builder(
        itemCount: viewModel.formations.length,
        itemBuilder: (context, index) => ListTile(
          title: Row(
            children: [
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.formations[index].team?.nameTeam ?? "",
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.formations[index].dateEnd.toString(),
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  viewModel.formations[index].dateEnd.toString(),
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
                  onTap: () => viewModel.deletePlayerContract(index, context),
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
  FormationListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormationListViewModel();
}
