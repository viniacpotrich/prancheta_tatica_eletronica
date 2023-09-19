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
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  FormationListViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormationListViewModel();
}
