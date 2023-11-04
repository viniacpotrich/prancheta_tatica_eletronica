import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/ui/views/team_detail/team_detail_view.form.dart';

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
        title: const Text("Team Detail"),
        actions: [
          ElevatedButton(
            onPressed: () => viewModel.submit(context),
            child: const Icon(Icons.check),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Expanded(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                  initialValue: viewModel.teamModelTemp.nameTeam,
                  onChanged: (value) => viewModel.controllerNameInput(
                    value,
                  ),
                ),
                const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Nickname",
                  ),
                  initialValue: viewModel.teamModelTemp.nicknameTeam,
                  onChanged: (value) => viewModel.controllerNickNameInput(
                    value,
                  ),
                ),
                const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "City",
                  ),
                  initialValue: viewModel.teamModelTemp.cityTeam,
                  onChanged: (value) => viewModel.controllerCitiesTeamInput(
                    value,
                  ),
                ),
                const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
                Row(
                  children: [
                    const Text("Colors:",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const Gap(20,
                        color: Colors.transparent, crossAxisExtent: 20),
                    FloatingActionButton.extended(
                      heroTag: "clr1",
                      label: const Text("Primary Color"),
                      onPressed: () => viewModel.showColorPicker(
                        context,
                        viewModel.picker1Color,
                        viewModel.controllerColor1Team,
                      ),
                      backgroundColor: viewModel.picker1Color,
                    ),
                    const Gap(20,
                        color: Colors.transparent, crossAxisExtent: 20),
                    FloatingActionButton.extended(
                      heroTag: "clr2",
                      label: const Text("Secondary Color"),
                      onPressed: () => viewModel.showColorPicker(
                        context,
                        viewModel.picker2Color,
                        viewModel.controllerColor2Team,
                      ),
                      backgroundColor: viewModel.picker2Color,
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                foregroundDecoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: viewModel.getImage(),
              )
            ],
          ))
        ]),
      ),
    );
  }

  @override
  TeamDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamDetailViewModel();
}
