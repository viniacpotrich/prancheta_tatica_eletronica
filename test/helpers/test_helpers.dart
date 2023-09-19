import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/services/player_service.dart';
import 'package:tactical_e_clipboard/services/formation_service.dart';
import 'package:tactical_e_clipboard/services/team_service.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_service.dart';
import 'package:tactical_e_clipboard/services/config_service.dart';
import 'package:tactical_e_clipboard/services/player_contract_service.dart';
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
  MockSpec<ConfigService>(onMissingStub: OnMissingStub.returnDefault),
  MockSpec<PlayerContractService>(onMissingStub: OnMissingStub.returnDefault),
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
  _removeRegistrationIfExists<ConfigService>();
  final service = MockConfigService();
  locator.registerSingleton<ConfigService>(service);
  return service;
}

MockPlayerContractService getAndRegisterPlayerContractService() {
  _removeRegistrationIfExists<PlayerContractService>();
  final service = MockPlayerContractService();
  locator.registerSingleton<PlayerContractService>(service);
  return service;
}
// @stacked-mock-create

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
