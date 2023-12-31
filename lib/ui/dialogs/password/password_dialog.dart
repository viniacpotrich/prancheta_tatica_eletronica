import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/ui/dialogs/password/password_dialog.form.dart';

import '../../common/app_strings.dart';
import 'password_dialog_model.dart';

@FormView(fields: [
  FormTextField(name: 'passwordInput'),
])
class PasswordDialog extends StackedView<PasswordDialogModel>
    with $PasswordDialog {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const PasswordDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PasswordDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              request.title ?? passwordDialogTitle,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: passwordString,
              ),
              controller: passwordInputController,
              autofocus: true,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (value) {
                completer(DialogResponse(
                  confirmed: true,
                  data: passwordInputController.value,
                ));
              },
            ),
            verticalSpaceMedium,
            GestureDetector(
              onTap: () {
                completer(DialogResponse(
                  confirmed: true,
                  data: passwordInputController.value,
                ));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  save,
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
  PasswordDialogModel viewModelBuilder(BuildContext context) =>
      PasswordDialogModel();
}
