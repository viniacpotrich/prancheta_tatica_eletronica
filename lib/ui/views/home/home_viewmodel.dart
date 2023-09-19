import 'package:tactical_e_clipboard/app/app.bottomsheets.dart';
import 'package:tactical_e_clipboard/app/app.dialogs.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/model/item_home_menu_model.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel {
  @override
  Future futureToRun() async {
    populate();
  }

  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  late List<ItemHomeMenuModel> listMenu;

  void populate() {
    listMenu = [
      ItemHomeMenuModel(
        title: "Jogadores",
        callBack: _navigationService.navigateToPlayerListView,
      ),
      ItemHomeMenuModel(
        title: "Times",
        callBack: _navigationService.navigateToTeamListView,
      ),
      ItemHomeMenuModel(
        title: "Jogadas",
        callBack: _navigationService.navigateToPatternOfPlayListView,
      ),
      ItemHomeMenuModel(
        title: "Esquemas",
        callBack: _navigationService.navigateToFormationListView,
      ),
    ];
  }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
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
