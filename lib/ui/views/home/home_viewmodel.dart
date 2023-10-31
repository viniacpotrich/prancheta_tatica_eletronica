import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.bottomsheets.dart';
import 'package:tactical_e_clipboard/app/app.dialogs.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/item_home_menu_model.dart';
import 'package:tactical_e_clipboard/services/password_service.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';

class HomeViewModel extends FutureViewModel {
  final _passwordService = locator<PasswordService>();
  final _bottomSheetService = locator<BottomSheetService>();
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
      await askPassword();
    }
  }

  Future<bool> hasPassword() {
    return _passwordService.hasPassword();
  }

  Future<void> askPassword() async {
    _dialogService
        .showCustomDialog(
          variant: DialogType.password,
          title: "Insira a senha",
        )
        .then(
          (value) => _passwordService.updatePassword(value!.data.text),
        );
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
    ];
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void navigateTo(Function callBack) => callBack();
}
