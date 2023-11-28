import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/ui/common/app_colors.dart';
import 'package:tactical_e_clipboard/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'formation_settings_dialog_model.dart';

const double _graphicSize = 60;

@FormView(fields: [
  FormTextField(name: 'lixo'), //PLACEHOLDER NAO REMOVERlixo
  FormDropdownField(name: "team", items: [
    StaticDropdownItem(title: "title", value: '1'),
  ]),
])
class FormationSettingsDialog
    extends StackedView<FormationSettingsDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const FormationSettingsDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FormationSettingsDialogModel viewModel,
    Widget? child,
  ) {
    print(request.data);
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.title ?? 'Hello Stacked Dialog!!',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      if (request.description != null) ...[
                        verticalSpaceTiny,
                        Text(
                          request.description!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: kcMediumGrey,
                          ),
                          maxLines: 3,
                          softWrap: true,
                        ),
                      ],
                      DropdownButtonFormField(
                        value: request.data.selected, //.actualTeam
                        icon: const Icon(Icons.arrow_downward),
                        decoration: InputDecoration(
                          labelText: request.data.label, //.selectTeam
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                        onChanged: (value) => request.data
                            .onCallback(value), //.onChangedSelectTeam(value)
                        items: request.data.toDropdownMenuItem(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpaceMedium,
            GestureDetector(
              onTap: () => completer(DialogResponse(
                confirmed: true,
                data: request.data.selected,
              )),
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Got it',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
  FormationSettingsDialogModel viewModelBuilder(BuildContext context) =>
      FormationSettingsDialogModel();
}
