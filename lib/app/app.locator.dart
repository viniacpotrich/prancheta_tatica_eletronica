// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../services/database_service.dart';
import '../services/formation_repository_service.dart';
import '../services/formation_service.dart';
import '../services/parameter_repository_service.dart';
import '../services/parameter_service.dart';
import '../services/password_service.dart';
import '../services/pattern_of_play_repository_service.dart';
import '../services/pattern_of_play_service.dart';
import '../services/player_contract_repository_service.dart';
import '../services/player_contract_service.dart';
import '../services/player_repository_service.dart';
import '../services/player_service.dart';
import '../services/team_repository_service.dart';
import '../services/team_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => PlayerService());
  locator.registerLazySingleton(() => FormationService());
  locator.registerLazySingleton(() => TeamService());
  locator.registerLazySingleton(() => PatternOfPlayService());
  locator.registerLazySingleton(() => ParameterService());
  locator.registerLazySingleton(() => PlayerContractService());
  locator.registerLazySingleton(() => ParameterRepositoryService());
  locator.registerLazySingleton(() => FormationRepositoryService());
  locator.registerLazySingleton(() => PatternOfPlayRepositoryService());
  locator.registerLazySingleton(() => PlayerContractRepositoryService());
  locator.registerLazySingleton(() => PlayerRepositoryService());
  locator.registerLazySingleton(() => TeamRepositoryService());
  locator.registerLazySingleton(() => DatabaseService());
  locator.registerLazySingleton(() => PasswordService());
}
