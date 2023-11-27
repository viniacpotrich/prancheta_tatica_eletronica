// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i17;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i24;
import 'package:tactical_e_clipboard/model/formation_model.dart' as _i20;
import 'package:tactical_e_clipboard/model/palyer_contract_model.dart' as _i22;
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart' as _i21;
import 'package:tactical_e_clipboard/model/player_model.dart' as _i18;
import 'package:tactical_e_clipboard/model/position_field.dart' as _i23;
import 'package:tactical_e_clipboard/model/team_model.dart' as _i19;
import 'package:tactical_e_clipboard/ui/views/date_picker_widget/date_picker_widget_view.dart'
    as _i14;
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart' as _i15;
import 'package:tactical_e_clipboard/ui/views/formation_detail/formation_detail_view.dart'
    as _i9;
import 'package:tactical_e_clipboard/ui/views/formation_list/formation_list_view.dart'
    as _i8;
import 'package:tactical_e_clipboard/ui/views/home/home_view.dart' as _i2;
import 'package:tactical_e_clipboard/ui/views/pattern_of_play_detail/pattern_of_play_detail_view.dart'
    as _i11;
import 'package:tactical_e_clipboard/ui/views/pattern_of_play_execution/pattern_of_play_execution_view.dart'
    as _i16;
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

  static const datePickerWidgetView = '/date-picker-widget-view';

  static const fieldView = '/field-view';

  static const patternOfPlayExecutionView = '/pattern-of-play-execution-view';

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
    datePickerWidgetView,
    fieldView,
    patternOfPlayExecutionView,
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
    _i1.RouteDef(
      Routes.datePickerWidgetView,
      page: _i14.DatePickerWidgetView,
    ),
    _i1.RouteDef(
      Routes.fieldView,
      page: _i15.FieldView,
    ),
    _i1.RouteDef(
      Routes.patternOfPlayExecutionView,
      page: _i16.PatternOfPlayExecutionView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.PlayerListView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.PlayerListView(),
        settings: data,
      );
    },
    _i5.PlayerDetailView: (data) {
      final args = data.getArgs<PlayerDetailViewArguments>(
        orElse: () => const PlayerDetailViewArguments(),
      );
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i5.PlayerDetailView(playerModel: args.playerModel, key: args.key),
        settings: data,
      );
    },
    _i6.TeamListView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.TeamListView(),
        settings: data,
      );
    },
    _i7.TeamDetailView: (data) {
      final args = data.getArgs<TeamDetailViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.TeamDetailView(teamModel: args.teamModel, key: args.key),
        settings: data,
      );
    },
    _i8.FormationListView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.FormationListView(),
        settings: data,
      );
    },
    _i9.FormationDetailView: (data) {
      final args = data.getArgs<FormationDetailViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.FormationDetailView(
            formationModel: args.formationModel, key: args.key),
        settings: data,
      );
    },
    _i10.PatternOfPlayListView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.PatternOfPlayListView(),
        settings: data,
      );
    },
    _i11.PatternOfPlayDetailView: (data) {
      final args =
          data.getArgs<PatternOfPlayDetailViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.PatternOfPlayDetailView(
            patternOfPlay: args.patternOfPlay, key: args.key),
        settings: data,
      );
    },
    _i12.PlayerContractListView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.PlayerContractListView(),
        settings: data,
      );
    },
    _i13.PlayerContractDetailView: (data) {
      final args =
          data.getArgs<PlayerContractDetailViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.PlayerContractDetailView(
            playerContractModel: args.playerContractModel, key: args.key),
        settings: data,
      );
    },
    _i14.DatePickerWidgetView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.DatePickerWidgetView(),
        settings: data,
      );
    },
    _i15.FieldView: (data) {
      final args = data.getArgs<FieldViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.FieldView(
            positions: args.positions, callback: args.callback, key: args.key),
        settings: data,
      );
    },
    _i16.PatternOfPlayExecutionView: (data) {
      final args =
          data.getArgs<PatternOfPlayExecutionViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.PatternOfPlayExecutionView(
            patternOfPlay: args.patternOfPlay, key: args.key),
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
    this.playerModel,
    this.key,
  });

  final _i18.PlayerModel? playerModel;

  final _i17.Key? key;

  @override
  String toString() {
    return '{"playerModel": "$playerModel", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PlayerDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.playerModel == playerModel && other.key == key;
  }

  @override
  int get hashCode {
    return playerModel.hashCode ^ key.hashCode;
  }
}

class TeamDetailViewArguments {
  const TeamDetailViewArguments({
    required this.teamModel,
    this.key,
  });

  final _i19.TeamModel? teamModel;

  final _i17.Key? key;

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

class FormationDetailViewArguments {
  const FormationDetailViewArguments({
    required this.formationModel,
    this.key,
  });

  final _i20.FormationModel? formationModel;

  final _i17.Key? key;

  @override
  String toString() {
    return '{"formationModel": "$formationModel", "key": "$key"}';
  }

  @override
  bool operator ==(covariant FormationDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.formationModel == formationModel && other.key == key;
  }

  @override
  int get hashCode {
    return formationModel.hashCode ^ key.hashCode;
  }
}

class PatternOfPlayDetailViewArguments {
  const PatternOfPlayDetailViewArguments({
    required this.patternOfPlay,
    this.key,
  });

  final _i21.PatternOfPlayModel? patternOfPlay;

  final _i17.Key? key;

  @override
  String toString() {
    return '{"patternOfPlay": "$patternOfPlay", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PatternOfPlayDetailViewArguments other) {
    if (identical(this, other)) return true;
    return other.patternOfPlay == patternOfPlay && other.key == key;
  }

  @override
  int get hashCode {
    return patternOfPlay.hashCode ^ key.hashCode;
  }
}

class PlayerContractDetailViewArguments {
  const PlayerContractDetailViewArguments({
    required this.playerContractModel,
    this.key,
  });

  final _i22.PlayerContractModel? playerContractModel;

  final _i17.Key? key;

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

class FieldViewArguments {
  const FieldViewArguments({
    required this.positions,
    required this.callback,
    this.key,
  });

  final List<_i23.PositionField> positions;

  final Function callback;

  final _i17.Key? key;

  @override
  String toString() {
    return '{"positions": "$positions", "callback": "$callback", "key": "$key"}';
  }

  @override
  bool operator ==(covariant FieldViewArguments other) {
    if (identical(this, other)) return true;
    return other.positions == positions &&
        other.callback == callback &&
        other.key == key;
  }

  @override
  int get hashCode {
    return positions.hashCode ^ callback.hashCode ^ key.hashCode;
  }
}

class PatternOfPlayExecutionViewArguments {
  const PatternOfPlayExecutionViewArguments({
    required this.patternOfPlay,
    this.key,
  });

  final _i21.PatternOfPlayModel? patternOfPlay;

  final _i17.Key? key;

  @override
  String toString() {
    return '{"patternOfPlay": "$patternOfPlay", "key": "$key"}';
  }

  @override
  bool operator ==(covariant PatternOfPlayExecutionViewArguments other) {
    if (identical(this, other)) return true;
    return other.patternOfPlay == patternOfPlay && other.key == key;
  }

  @override
  int get hashCode {
    return patternOfPlay.hashCode ^ key.hashCode;
  }
}

extension NavigatorStateExtension on _i24.NavigationService {
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
    _i18.PlayerModel? playerModel,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.playerDetailView,
        arguments:
            PlayerDetailViewArguments(playerModel: playerModel, key: key),
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
    required _i19.TeamModel? teamModel,
    _i17.Key? key,
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

  Future<dynamic> navigateToFormationDetailView({
    required _i20.FormationModel? formationModel,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.formationDetailView,
        arguments: FormationDetailViewArguments(
            formationModel: formationModel, key: key),
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

  Future<dynamic> navigateToPatternOfPlayDetailView({
    required _i21.PatternOfPlayModel? patternOfPlay,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.patternOfPlayDetailView,
        arguments: PatternOfPlayDetailViewArguments(
            patternOfPlay: patternOfPlay, key: key),
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
    required _i22.PlayerContractModel? playerContractModel,
    _i17.Key? key,
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

  Future<dynamic> navigateToDatePickerWidgetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.datePickerWidgetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFieldView({
    required List<_i23.PositionField> positions,
    required Function callback,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.fieldView,
        arguments: FieldViewArguments(
            positions: positions, callback: callback, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPatternOfPlayExecutionView({
    required _i21.PatternOfPlayModel? patternOfPlay,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.patternOfPlayExecutionView,
        arguments: PatternOfPlayExecutionViewArguments(
            patternOfPlay: patternOfPlay, key: key),
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
    _i18.PlayerModel? playerModel,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.playerDetailView,
        arguments:
            PlayerDetailViewArguments(playerModel: playerModel, key: key),
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
    required _i19.TeamModel? teamModel,
    _i17.Key? key,
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

  Future<dynamic> replaceWithFormationDetailView({
    required _i20.FormationModel? formationModel,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.formationDetailView,
        arguments: FormationDetailViewArguments(
            formationModel: formationModel, key: key),
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

  Future<dynamic> replaceWithPatternOfPlayDetailView({
    required _i21.PatternOfPlayModel? patternOfPlay,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.patternOfPlayDetailView,
        arguments: PatternOfPlayDetailViewArguments(
            patternOfPlay: patternOfPlay, key: key),
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
    required _i22.PlayerContractModel? playerContractModel,
    _i17.Key? key,
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

  Future<dynamic> replaceWithDatePickerWidgetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.datePickerWidgetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFieldView({
    required List<_i23.PositionField> positions,
    required Function callback,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.fieldView,
        arguments: FieldViewArguments(
            positions: positions, callback: callback, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPatternOfPlayExecutionView({
    required _i21.PatternOfPlayModel? patternOfPlay,
    _i17.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.patternOfPlayExecutionView,
        arguments: PatternOfPlayExecutionViewArguments(
            patternOfPlay: patternOfPlay, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
