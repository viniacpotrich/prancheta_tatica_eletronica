import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/ui/views/team_detail/team_detail_view.form.dart';
import 'package:stacked/stacked_annotations.dart';

import 'team_detail_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'nameTeamInput'),
  FormTextField(name: 'nicknameTeamInput'),
  FormTextField(
    name: "citiesTeamInput",
  ),
])
class TeamDetailView extends StackedView<TeamDetailViewModel>
    with $TeamDetailView {
  const TeamDetailView({required this.teamModel, Key? key}) : super(key: key);

  final TeamModel? teamModel;

  @override
  void onViewModelReady(viewModel) {
    syncFormWithViewModel(viewModel);
    viewModel.getTeam(teamModel);
  }

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
            onPressed: () => viewModel.submit(),
            child: Icon(Icons.check),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: NameTeamInputValueKey,
              ),
              // controller: nameTeamInputController,
              initialValue: viewModel.teamModelTemp.nameTeam,
              onChanged: (value) => viewModel.controllerNameInput(
                value,
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: NicknameTeamInputValueKey,
              ),
              initialValue: viewModel.teamModelTemp.nicknameTeam,
              onChanged: (value) => viewModel.controllerNickNameInput(
                value,
              ),
            ),
             TextFormField(
              decoration: const InputDecoration(
                labelText: NicknameTeamInputValueKey,
              ),
              initialValue: viewModel.teamModelTemp.cityTeam,
              onChanged: (value) => viewModel.controllerCitiesTeamInput(
                value,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: viewModel.picker1Color,
                ),
                ElevatedButton(
                  onPressed: () => viewModel.showColorPicker(
                    context,
                    viewModel.picker1Color,
                    viewModel.controllerColor1Team,
                  ),
                  child: const Text("color1"),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: viewModel.picker2Color,
                ),
                ElevatedButton(
                  onPressed: () => viewModel.showColorPicker(
                    context,
                    viewModel.picker2Color,
                    viewModel.controllerColor2Team,
                  ),
                  child: const Text("color2"),
                ),
              ],
            ),
            Container(
              child: viewModel.getImage(),
            )
          ],
        ),
      ),
    );
  }

  @override
  TeamDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamDetailViewModel();
}
