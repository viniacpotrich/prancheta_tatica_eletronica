import 'package:prancheta_tatica_eletronica/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:prancheta_tatica_eletronica/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:prancheta_tatica_eletronica/ui/views/home/home_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:prancheta_tatica_eletronica/ui/views/player_list/player_list_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/player_detail/player_detail_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/team_list/team_list_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/team_detail/team_detail_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/formation_list/formation_list_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/formation_detail/formation_detail_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/pattern_of_play_list/pattern_of_play_list_view.dart';
import 'package:prancheta_tatica_eletronica/ui/views/pattern_of_play_detail/pattern_of_play_detail_view.dart';
import 'package:prancheta_tatica_eletronica/ui/dialogs/alert_dialog/alert_dialog_dialog.dart';
import 'package:prancheta_tatica_eletronica/services/player_service.dart';
import 'package:prancheta_tatica_eletronica/services/formation_service.dart';
import 'package:prancheta_tatica_eletronica/services/team_service.dart';
import 'package:prancheta_tatica_eletronica/services/pattern_of_play_service.dart';
import 'package:prancheta_tatica_eletronica/services/config_service.dart';
import 'package:prancheta_tatica_eletronica/services/player_contract_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: PlayerListView),
    MaterialRoute(page: PlayerDetailView),
    MaterialRoute(page: TeamListView),
    MaterialRoute(page: TeamDetailView),
    MaterialRoute(page: FormationListView),
    MaterialRoute(page: FormationDetailView),
    MaterialRoute(page: PatternOfPlayListView),
    MaterialRoute(page: PatternOfPlayDetailView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: PlayerService),
    LazySingleton(classType: FormationService),
    LazySingleton(classType: TeamService),
    LazySingleton(classType: PatternOfPlayService),
    LazySingleton(classType: ConfigService),
    LazySingleton(classType: PlayerContractService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: AlertDialogDialog),
// @stacked-dialog
  ],
)
class App {}
