// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/bottom_sheet/bottom_sheet_service.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_shared/stacked_shared.dart';
import 'package:tactical_e_clipboard/database/database_manager.dart';
import 'package:tactical_e_clipboard/repository/config_repository_impl.dart';
import 'package:tactical_e_clipboard/repository/formation_repository_impl.dart';
import 'package:tactical_e_clipboard/repository/pattern_of_play_repository_impl.dart';
import 'package:tactical_e_clipboard/repository/player_repository_impl.dart';
import 'package:tactical_e_clipboard/repository/team_repository_impl.dart';

import '../services/config_service.dart';
import '../services/formation_service.dart';
import '../services/pattern_of_play_service.dart';
import '../services/player_contract_service.dart';
import '../services/player_service.dart';
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
  locator.registerLazySingleton(() => DatabaseManager());
  
  // Repositories
  locator.registerLazySingleton(() => PlayerRepositoryImpl());
  locator.registerLazySingleton(() => FormationRepositoryImpl());
  locator.registerLazySingleton(() => TeamRepositoryImpl());
  locator.registerLazySingleton(() => PatternOfPlayRepositoryImpl());
  locator.registerLazySingleton(() => ConfigRepositoryImpl());

  // Services
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => PlayerService());
  locator.registerLazySingleton(() => FormationService());
  locator.registerLazySingleton(() => TeamService());
  locator.registerLazySingleton(() => PatternOfPlayService());
  locator.registerLazySingleton(() => ConfigService());
  locator.registerLazySingleton(() => PlayerContractService());
}
