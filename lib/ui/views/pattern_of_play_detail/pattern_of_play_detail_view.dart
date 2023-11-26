import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart';

import 'pattern_of_play_detail_viewmodel.dart';

class PatternOfPlayDetailView
    extends StackedView<PatternOfPlayDetailViewModel> {
  const PatternOfPlayDetailView({required this.patternOfPlay, Key? key})
      : super(key: key);
  final PatternOfPlayModel? patternOfPlay;

  @override
  Widget builder(
    BuildContext context,
    PatternOfPlayDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Patterns of Play Detail"),
        actions: [
          IconButton(
            onPressed: viewModel.selectDate,
            icon: const Icon(Icons.date_range),
          ),
          IconButton(
            onPressed: viewModel.openSettings,
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: viewModel.addFormation,
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () => viewModel.submit(context),
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: constraints.maxHeight * 80 / 100,
                width: constraints.maxWidth,
                child: viewModel.formationsView.isEmpty
                    ? Placeholder()
                    : Stack(
                        children: [
                          FieldView(
                            positions: viewModel
                                    .formationsView[viewModel.selected]
                                    .positions ??
                                [],
                            callback: () {},
                          ),
                        ],
                      ),
              ),
              SizedBox(
                height: constraints.maxHeight * 20 / 100,
                width: constraints.maxWidth,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: viewModel.formationsView.length,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        child: GestureDetector(
                          child: Stack(
                            children: [
                              FieldView(
                                positions: viewModel
                                        .formationsView[viewModel.selected]
                                        .positions ??
                                    [],
                                callback: () {},
                              ),
                            ],
                          ),
                          onTap: () => viewModel.changeSelected(index),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () => viewModel.removeField(index),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PatternOfPlayDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PatternOfPlayDetailViewModel();
}
