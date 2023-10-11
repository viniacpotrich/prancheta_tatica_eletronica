import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
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
// @stacked-import

import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<NavigationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<BottomSheetService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DialogService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PlayerService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FormationService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TeamService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PatternOfPlayService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ParameterService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PlayerContractService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<ParameterRepositoryService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<FormationRepositoryService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PatternOfPlayRepositoryService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PlayerContractRepositoryService>(
      onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PlayerRepositoryService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<TeamRepositoryService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<DatabaseService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PasswordService>(onMissingStub: OnMissingStub.returnDefault),
// @stacked-mock-spec
])
void registerServices() {
  getAndRegisterNavigationService();
  getAndRegisterBottomSheetService();
  getAndRegisterDialogService();
  getAndRegisterPlayerService();
  getAndRegisterFormationService();
  getAndRegisterTeamService();
  getAndRegisterPatternOfPlayService();
  getAndRegisterConfigService();
  getAndRegisterPlayerContractService();
  getAndRegisterConfigRepositoryService();
  getAndRegisterFormationRepositoryService();
  getAndRegisterPatternOfPlayRepositoryService();
  getAndRegisterPlayerContractRepositoryService();
  getAndRegisterPlayerRepositoryService();
  getAndRegisterTeamRepositoryService();
  getAndRegisterDatabaseService();
  getAndRegisterPasswordService();
// @stacked-mock-register
}

MockNavigationService getAndRegisterNavigationService() {
  _removeRegistrationIfExists<NavigationService>();
  final service = MockNavigationService();
  locator.registerSingleton<NavigationService>(service);
  return service;
}

MockBottomSheetService getAndRegisterBottomSheetService<T>({
  SheetResponse<T>? showCustomSheetResponse,
}) {
  _removeRegistrationIfExists<BottomSheetService>();
  final service = MockBottomSheetService();

  when(service.showCustomSheet<T, T>(
    enableDrag: anyNamed('enableDrag'),
    enterBottomSheetDuration: anyNamed('enterBottomSheetDuration'),
    exitBottomSheetDuration: anyNamed('exitBottomSheetDuration'),
    ignoreSafeArea: anyNamed('ignoreSafeArea'),
    isScrollControlled: anyNamed('isScrollControlled'),
    barrierDismissible: anyNamed('barrierDismissible'),
    additionalButtonTitle: anyNamed('additionalButtonTitle'),
    variant: anyNamed('variant'),
    title: anyNamed('title'),
    hasImage: anyNamed('hasImage'),
    imageUrl: anyNamed('imageUrl'),
    showIconInMainButton: anyNamed('showIconInMainButton'),
    mainButtonTitle: anyNamed('mainButtonTitle'),
    showIconInSecondaryButton: anyNamed('showIconInSecondaryButton'),
    secondaryButtonTitle: anyNamed('secondaryButtonTitle'),
    showIconInAdditionalButton: anyNamed('showIconInAdditionalButton'),
    takesInput: anyNamed('takesInput'),
    barrierColor: anyNamed('barrierColor'),
    barrierLabel: anyNamed('barrierLabel'),
    customData: anyNamed('customData'),
    data: anyNamed('data'),
    description: anyNamed('description'),
  )).thenAnswer((realInvocation) =>
      Future.value(showCustomSheetResponse ?? SheetResponse<T>()));

  locator.registerSingleton<BottomSheetService>(service);
  return service;
}

MockDialogService getAndRegisterDialogService() {
  _removeRegistrationIfExists<DialogService>();
  final service = MockDialogService();
  locator.registerSingleton<DialogService>(service);
  return service;
}

MockPlayerService getAndRegisterPlayerService() {
  _removeRegistrationIfExists<PlayerService>();
  final service = MockPlayerService();
  locator.registerSingleton<PlayerService>(service);
  return service;
}

MockFormationService getAndRegisterFormationService() {
  _removeRegistrationIfExists<FormationService>();
  final service = MockFormationService();
  locator.registerSingleton<FormationService>(service);
  return service;
}

MockTeamService getAndRegisterTeamService() {
  _removeRegistrationIfExists<TeamService>();
  final service = MockTeamService();
  locator.registerSingleton<TeamService>(service);
  return service;
}

MockPatternOfPlayService getAndRegisterPatternOfPlayService() {
  _removeRegistrationIfExists<PatternOfPlayService>();
  final service = MockPatternOfPlayService();
  locator.registerSingleton<PatternOfPlayService>(service);
  return service;
}

MockConfigService getAndRegisterConfigService() {
  _removeRegistrationIfExists<ParameterService>();
  final service = MockConfigService();
  locator.registerSingleton<ParameterService>(service);
  return service;
}

MockPlayerContractService getAndRegisterPlayerContractService() {
  _removeRegistrationIfExists<PlayerContractService>();
  final service = MockPlayerContractService();
  locator.registerSingleton<PlayerContractService>(service);
  return service;
}

MockConfigRepositoryService getAndRegisterConfigRepositoryService() {
  _removeRegistrationIfExists<ParameterRepositoryService>();
  final service = MockConfigRepositoryService();
  locator.registerSingleton<ParameterRepositoryService>(service);
  return service;
}

MockFormationRepositoryService getAndRegisterFormationRepositoryService() {
  _removeRegistrationIfExists<FormationRepositoryService>();
  final service = MockFormationRepositoryService();
  locator.registerSingleton<FormationRepositoryService>(service);
  return service;
}

MockPatternOfPlayRepositoryService
    getAndRegisterPatternOfPlayRepositoryService() {
  _removeRegistrationIfExists<PatternOfPlayRepositoryService>();
  final service = MockPatternOfPlayRepositoryService();
  locator.registerSingleton<PatternOfPlayRepositoryService>(service);
  return service;
}

MockPlayerContractRepositoryService
    getAndRegisterPlayerContractRepositoryService() {
  _removeRegistrationIfExists<PlayerContractRepositoryService>();
  final service = MockPlayerContractRepositoryService();
  locator.registerSingleton<PlayerContractRepositoryService>(service);
  return service;
}

MockPlayerRepositoryService getAndRegisterPlayerRepositoryService() {
  _removeRegistrationIfExists<PlayerRepositoryService>();
  final service = MockPlayerRepositoryService();
  locator.registerSingleton<PlayerRepositoryService>(service);
  return service;
}

MockTeamRepositoryService getAndRegisterTeamRepositoryService() {
  _removeRegistrationIfExists<TeamRepositoryService>();
  final service = MockTeamRepositoryService();
  locator.registerSingleton<TeamRepositoryService>(service);
  return service;
}

MockDatabaseService getAndRegisterDatabaseService() {
  _removeRegistrationIfExists<DatabaseService>();
  final service = MockDatabaseService();
  locator.registerSingleton<DatabaseService>(service);
  return service;
}

MockPasswordService getAndRegisterPasswordService() {
  _removeRegistrationIfExists<PasswordService>();
  final service = MockPasswordService();
  locator.registerSingleton<PasswordService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
