import 'package:tactical_e_clipboard/app/app.bottomsheets.dart';
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

  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();

  late List<ItemHomeMenuModel> listMenu;

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
