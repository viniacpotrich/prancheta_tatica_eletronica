// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i18;
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart' as _i17;
import 'package:tactical_e_clipboard/model/team_model.dart' as _i16;
import 'package:tactical_e_clipboard/ui/views/formation_detail/formation_detail_view.dart'
    as _i9;
import 'package:tactical_e_clipboard/ui/views/formation_list/formation_list_view.dart'
    as _i8;
import 'package:tactical_e_clipboard/ui/views/home/home_view.dart' as _i2;
import 'package:tactical_e_clipboard/ui/views/pattern_of_play_detail/pattern_of_play_detail_view.dart'
    as _i11;
import 'package:tactical_e_clipboard/ui/views/pattern_of_play_list/pattern_of_play_list_view.dart'
    as _i10;
import 'package:tactical_e_clipboard/ui/views/player_contract_detail/player_contract_detail_view.dart'
    as _i13;
import 'package:tactical_e_clipboard/ui/views/player_contract_list/player_contract_list_view.dart'
    as _i12;
import 'package:tactical_e_clipboard/ui/views/player_detail/player_detail_view.dart'
    as _i5;
import 'package:tactical_e_clipboard/ui/views/player_list/player_list_view.dart'
    as _i4;
import 'package:tactical_e_clipboard/ui/views/startup/startup_view.dart' as _i3;
import 'package:tactical_e_clipboard/ui/views/team_detail/team_detail_view.dart'
    as _i7;
import 'package:tactical_e_clipboard/ui/views/team_list/team_list_view.dart'
    as _i6;
import 'package:uuid/uuid.dart' as _i15;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const playerListView = '/player-list-view';

  static const playerDetailView = '/player-detail-view';

  static const teamListView = '/team-list-view';

  static const teamDetailView = '/team-detail-view';

  static const formationListView = '/formation-list-view';

  static const formationDetailView = '/formation-detail-view';

  static const patternOfPlayListView = '/pattern-of-play-list-view';

  static const patternOfPlayDetailView = '/pattern-of-play-detail-view';

  static const playerContractListView = '/player-contract-list-view';

  static const playerContractDetailView = '/player-contract-detail-view';

  static const all = <String>{
    homeView,
    startupView,
    playerListView,
    playerDetailView,
    teamListView,
    teamDetailView,
    formationListView,
    formationDetailView,
    patternOfPlayListView,
    patternOfPlayDetailView,
    playerContractListView,
    playerContractDetailView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.playerListView,
      page: _i4.PlayerListView,
    ),
    _i1.RouteDef(
      Routes.playerDetailView,
      page: _i5.PlayerDetailView,
    ),
    _i1.RouteDef(
      Routes.teamListView,
      page: _i6.TeamListView,
    ),
    _i1.RouteDef(
      Routes.teamDetailView,
      page: _i7.TeamDetailView,
    ),
    _i1.RouteDef(
      Routes.formationListView,
      page: _i8.FormationListView,
    ),
    _i1.RouteDef(
      Routes.formationDetailView,
      page: _i9.FormationDetailView,
    ),
    _i1.RouteDef(
      Routes.patternOfPlayListView,
      page: _i10.PatternOfPlayListView,
    ),
    _i1.RouteDef(
      Routes.patternOfPlayDetailView,
      page: _i11.PatternOfPlayDetailView,
    ),
    _i1.RouteDef(
      Routes.playerContractListView,
      page: _i12.PlayerContractListView,
    ),
    _i1.RouteDef(
      Routes.playerContractDetailView,
      page: _i13.PlayerContractDetailView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.PlayerListView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PlayerListView(),
        settings: data,
      );
    },
    _i5.PlayerDetailView: (data) {
      final args = data.getArgs<PlayerDetailViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.PlayerDetailView(
            playerModelID: args.playerModelID, key: args.key),
        settings: data,
      );
    },
    _i6.TeamListView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.TeamListView(),
        settings: data,
      );
    },
    _i7.TeamDetailView: (data) {
      final args = data.getArgs<TeamDetailViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.TeamDetailView(teamModel: args.teamModel, key: args.key),
        settings: data,
      );
    },
    _i8.FormationListView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.FormationListView(),
        settings: data,
      );
    },
    _i9.FormationDetailView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.FormationDetailView(),
        settings: data,
      );
    },
    _i10.PatternOfPlayListView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PatternOfPlayListView(),
        settings: data,
      );
    },
    _i11.PatternOfPlayDetailView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.PatternOfPlayDetailView(),
        settings: data,
      );
    },
    _i12.PlayerContractListView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.PlayerContractListView(),
        settings: data,
      );
    },
    _i13.PlayerContractDetailView: (data) {
      final args =
          data.getArgs<PlayerContractDetailViewArguments>(nullOk: false);
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.PlayerContractDetailView(
            playerContractModel: args.playerContractModel, key: args.key),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class PlayerDetailViewArguments {
  const PlayerDetailViewArguments({
    required this.playerModelID,
    this.key,
  });

  final _i15.Uuid playerModelID;

  final _i14.Key? key;

  @override
  String toString() {
    return '{"playerModelID": "$playerModelID", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PlayerDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.playerModelID == playerModelID && other.key == key;
  }

  @override
  int get hashCode {
    return playerModelID.hashCode ^ key.hashCode;
  }
}

class TeamDetailViewArguments {
  const TeamDetailViewArguments({
    required this.teamModel,
    this.key,
  });

  final _i16.TeamModel? teamModel;

  final _i14.Key? key;

  @override
  String toString() {
    return '{"teamModel": "$teamModel", "key": "$key"}';
  }

  @override
  bool operator ==(covariant TeamDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.teamModel == teamModel && other.key == key;
  }

  @override
  int get hashCode {
    return teamModel.hashCode ^ key.hashCode;
  }
}

class PlayerContractDetailViewArguments {
  const PlayerContractDetailViewArguments({
    required this.playerContractModel,
    this.key,
  });

  final _i17.PlayerContractModel? playerContractModel;

  final _i14.Key? key;

  @override
  String toString() {
    return '{"playerContractModel": "$playerContractModel", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PlayerContractDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.playerContractModel == playerContractModel && other.key == key;
  }

  @override
  int get hashCode {
    return playerContractModel.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i18.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPlayerListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.playerListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPlayerDetailView({
    required _i15.Uuid playerModelID,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.playerDetailView,
        arguments:
            PlayerDetailViewArguments(playerModelID: playerModelID, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTeamListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.teamListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTeamDetailView({
    required _i16.TeamModel? teamModel,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.teamDetailView,
        arguments: TeamDetailViewArguments(teamModel: teamModel, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFormationListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.formationListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFormationDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.formationDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPatternOfPlayListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.patternOfPlayListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPatternOfPlayDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.patternOfPlayDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPlayerContractListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.playerContractListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPlayerContractDetailView({
    required _i17.PlayerContractModel? playerContractModel,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.playerContractDetailView,
        arguments: PlayerContractDetailViewArguments(
            playerContractModel: playerContractModel, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPlayerListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.playerListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPlayerDetailView({
    required _i15.Uuid playerModelID,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.playerDetailView,
        arguments:
            PlayerDetailViewArguments(playerModelID: playerModelID, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTeamListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.teamListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTeamDetailView({
    required _i16.TeamModel? teamModel,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.teamDetailView,
        arguments: TeamDetailViewArguments(teamModel: teamModel, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFormationListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.formationListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFormationDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.formationDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPatternOfPlayListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.patternOfPlayListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPatternOfPlayDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.patternOfPlayDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPlayerContractListView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.playerContractListView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPlayerContractDetailView({
    required _i17.PlayerContractModel? playerContractModel,
    _i14.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.playerContractDetailView,
        arguments: PlayerContractDetailViewArguments(
            playerContractModel: playerContractModel, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
