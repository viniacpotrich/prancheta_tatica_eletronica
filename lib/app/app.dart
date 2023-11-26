import 'package:tactical_e_clipboard/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:tactical_e_clipboard/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:tactical_e_clipboard/ui/views/home/home_view.dart';
import 'package:tactical_e_clipboard/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/ui/views/player_list/player_list_view.dart';
import 'package:tactical_e_clipboard/ui/views/player_detail/player_detail_view.dart';
import 'package:tactical_e_clipboard/ui/views/team_list/team_list_view.dart';
import 'package:tactical_e_clipboard/ui/views/team_detail/team_detail_view.dart';
import 'package:tactical_e_clipboard/ui/views/formation_list/formation_list_view.dart';
import 'package:tactical_e_clipboard/ui/views/formation_detail/formation_detail_view.dart';
import 'package:tactical_e_clipboard/ui/views/pattern_of_play_list/pattern_of_play_list_view.dart';
import 'package:tactical_e_clipboard/ui/views/pattern_of_play_detail/pattern_of_play_detail_view.dart';
import 'package:tactical_e_clipboard/ui/dialogs/alert_dialog/alert_dialog_dialog.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';
import 'package:tactical_e_clipboard/services/formation_service.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_service.dart';
import 'package:tactical_e_clipboard/services/parameter_service.dart';
import 'package:tactical_e_clipboard/services/player_contract_service.dart';
import 'package:tactical_e_clipboard/services/parameter_repository_service.dart';
import 'package:tactical_e_clipboard/services/formation_repository_service.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_repository_service.dart';
import 'package:tactical_e_clipboard/services/player_contract_repository_service.dart';
import 'package:tactical_e_clipboard/services/player_repository_service.dart';
import 'package:tactical_e_clipboard/services/team_repository_service.dart';
import 'package:tactical_e_clipboard/services/database_service.dart';
import 'package:tactical_e_clipboard/services/password_service.dart';
import 'package:tactical_e_clipboard/ui/dialogs/password/password_dialog.dart';
import 'package:tactical_e_clipboard/ui/views/player_contract_list/player_contract_list_view.dart';
import 'package:tactical_e_clipboard/ui/views/player_contract_detail/player_contract_detail_view.dart';
import 'package:tactical_e_clipboard/ui/views/date_picker_widget/date_picker_widget_view.dart';
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart';
import 'package:tactical_e_clipboard/ui/dialogs/formation_settings/formation_settings_dialog.dart';
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
    MaterialRoute(page: PlayerContractListView),
    MaterialRoute(page: PlayerContractDetailView),
    MaterialRoute(page: DatePickerWidgetView),
    MaterialRoute(page: FieldView),
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
    LazySingleton(classType: ParameterService),
    LazySingleton(classType: PlayerContractService),
    LazySingleton(classType: ParameterRepositoryService),
    LazySingleton(classType: FormationRepositoryService),
    LazySingleton(classType: PatternOfPlayRepositoryService),
    LazySingleton(classType: PlayerContractRepositoryService),
    LazySingleton(classType: PlayerRepositoryService),
    LazySingleton(classType: TeamRepositoryService),
    LazySingleton(classType: DatabaseService),
    LazySingleton(classType: PasswordService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: AlertDialogDialog),
    StackedDialog(classType: PasswordDialog),
    StackedDialog(classType: FormationSettingsDialog),
// @stacked-dialog
  ],
)
class App {}
