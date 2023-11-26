// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/dialogs/alert_dialog/alert_dialog_dialog.dart';
import '../ui/dialogs/formation_settings/formation_settings_dialog.dart';
import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import '../ui/dialogs/password/password_dialog.dart';

enum DialogType {
  infoAlert,
  alertDialog,
  password,
  formationSettings,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert: (context, request, completer) =>
        InfoAlertDialog(request: request, completer: completer),
    DialogType.alertDialog: (context, request, completer) =>
        AlertDialogDialog(request: request, completer: completer),
    DialogType.password: (context, request, completer) =>
        PasswordDialog(request: request, completer: completer),
    DialogType.formationSettings: (context, request, completer) =>
        FormationSettingsDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
