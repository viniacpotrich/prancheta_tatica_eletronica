import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart';

import 'formation_detail_viewmodel.dart';

class FormationDetailView extends StackedView<FormationDetailViewModel> {
  const FormationDetailView({
    required this.formationModel,
    Key? key,
  }) : super(key: key);

  final FormationModel? formationModel;

  @override
  Widget builder(
    BuildContext context,
    FormationDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Formação"),
        actions: [
          IconButton(
            onPressed: viewModel.selectDate,
            icon: const Icon(Icons.date_range),
          ),
          IconButton(
            onPressed: viewModel.openSettings,
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: viewModel.addPositionField,
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => viewModel.submit(context),
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: FieldView(
                positions: viewModel.positions,
                callback: viewModel.onCallback,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  FormationDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormationDetailViewModel();
}
