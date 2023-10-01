import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/ui/views/team_detail/team_detail_view.form.dart';
import 'package:uuid/uuid.dart';
import 'package:stacked/stacked_annotations.dart';

import 'team_detail_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'nameTeamInput'),
  FormDropdownField(
    name: "citiesTeam",
    items: [
      StaticDropdownItem(title: "city1", value: "1"),
      StaticDropdownItem(title: "city2", value: "2"),
      StaticDropdownItem(title: "city3", value: "3"),
      StaticDropdownItem(title: "city4", value: "4"),
    ],
  ),
])
class TeamDetailView extends StackedView<TeamDetailViewModel>
    with $TeamDetailView {
  const TeamDetailView({required this.teamModelID, Key? key}) : super(key: key);

  final Uuid teamModelID;

  @override
  Widget builder(
    BuildContext context,
    TeamDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Team Detail"),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.check),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  TeamDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamDetailViewModel();
}
