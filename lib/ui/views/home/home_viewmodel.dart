import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.dialogs.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/item_home_menu_model.dart';
import 'package:tactical_e_clipboard/services/password_service.dart';

class HomeViewModel extends FutureViewModel {
  final _passwordService = locator<PasswordService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  bool passwordOk = false;

  @override
  Future futureToRun() async {
    populate();
    verifyPassword();
  }

  late List<ItemHomeMenuModel> listMenu;

  void verifyPassword() async {
    if (!await hasPassword()) {
      await askNewPassword();
    } else {
      await askAndValidatePassword();
    }
  }

  Future<bool> hasPassword() {
    return _passwordService.hasPassword();
  }

  Future<void> askNewPassword() async {
    final newPassword = await _dialogService.showCustomDialog(
      variant: DialogType.password,
      title: "Informe uma NOVA senha (pelo menos 5 caracteres)",
    );
    if (newPassword!.data.text.length < 5) {
      askNewPassword();
    } else {
      _passwordService.updatePassword(newPassword.data.text);
    }
  }

  Future<void> askAndValidatePassword() async {
    final result = await _dialogService.showCustomDialog(
      variant: DialogType.password,
      title: "Informe a senha atual",
    );

    if (result != null) {
      final text = result.data?.text;

      if (text != null && await _passwordService.isValid(text)) {
        // Password is valid, proceed with your logic.
      } else {
        // Password is not valid, you might want to handle this case.
        await askAndValidatePassword(); // Re-ask for the password.
      }
    } else {
      // Handle the case when the dialog is dismissed or cancelled.
    }
  }

  void populate() {
    listMenu = [
      ItemHomeMenuModel(
        title: "Players",
        callBack: _navigationService.navigateToPlayerListView,
      ),
      ItemHomeMenuModel(
        title: "Teams",
        callBack: _navigationService.navigateToTeamListView,
      ),
      ItemHomeMenuModel(
        title: "Patterns of Play",
        callBack: _navigationService.navigateToPatternOfPlayListView,
      ),
      ItemHomeMenuModel(
        title: "Formations",
        callBack: _navigationService.navigateToFormationListView,
      ),
      ItemHomeMenuModel(
        title: "Contracts",
        callBack: _navigationService.navigateToPlayerContractListView,
      ),
    ];
  }

  void navigateTo(Function callBack) => callBack();
}
