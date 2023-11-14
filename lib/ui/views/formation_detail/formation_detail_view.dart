import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
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
      ),
      body: SafeArea(
        child: Column(
          children: [
            DropdownButtonFormField(
              items: viewModel.items
                  .map(
                    (e) => DropdownMenuItem(value: e, child: Text(e)),
                  )
                  .toList(),
              onChanged: (Object? value) {},
            ),
            DropdownButtonFormField(
              items: viewModel.items
                  .map(
                    (e) => DropdownMenuItem(value: e, child: Text(e)),
                  )
                  .toList(),
              onChanged: (Object? value) {},
            ),
            const Expanded(flex: 6, child: FieldView()),
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
