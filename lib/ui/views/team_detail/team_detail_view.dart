import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:tactical_e_clipboard/model/team_model.dart';
import 'package:tactical_e_clipboard/ui/views/team_detail/team_detail_view.form.dart';
import '../../common/app_strings.dart';
import 'team_detail_viewmodel.dart';

final _formKey = GlobalKey<FormState>();

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

  static const String _heroTagPrimaryColor = "heroTagPrimaryColor";
  static const String _heroTagSecondaryColor = "heroTagSecondaryColor";

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
        title: const Text(teamDetail),
        actions: [
          ElevatedButton(
            onPressed: () => _formKey.currentState!.validate()
                ? viewModel.submit(context)
                : (),
            child: const Icon(Icons.check),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: name,
                    ),
                    initialValue: viewModel.teamModelTemp.nameTeam,
                    onChanged: (value) => viewModel.controllerNameInput(
                      value,
                    ),
                    validator: (value) => value!.isEmpty ? teamMustHaveName : null,
                  ),
                  const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: nickname,
                    ),
                    initialValue: viewModel.teamModelTemp.nicknameTeam,
                    onChanged: (value) => viewModel.controllerNickNameInput(
                      value,
                    ),
                    validator: (value) => value!.isEmpty ? teamMustHaveNickname : null
                  ),
                  const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: city,
                    ),
                    initialValue: viewModel.teamModelTemp.cityTeam,
                    onChanged: (value) => viewModel.controllerCitiesTeamInput(
                      value,
                    ),
                    validator: (value) => value!.isEmpty ? teamMustHaveCity : null
                  ),
                  const Gap(20, color: Colors.transparent, crossAxisExtent: 20),
                  Row(
                    children: [
                      const Text("$colors:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const Gap(20,
                          color: Colors.transparent, crossAxisExtent: 20),
                      FloatingActionButton.extended(
                        heroTag: _heroTagPrimaryColor,
                        label: const Text(primaryColor),
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
                        heroTag: _heroTagSecondaryColor,
                        label: const Text(secondaryColor),
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
      ),
    );
  }

  @override
  TeamDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TeamDetailViewModel();
}
