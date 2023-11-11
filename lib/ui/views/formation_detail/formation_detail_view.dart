import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'formation_detail_viewmodel.dart';

class FormationDetailView extends StackedView<FormationDetailViewModel> {
  const FormationDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FormationDetailViewModel viewModel,
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
  FormationDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormationDetailViewModel();
}
