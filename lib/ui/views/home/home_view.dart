import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: viewModel.listMenu.length,
          itemBuilder: (context, index) => Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: ListTile(
              onTap: () => viewModel.navigateTo(
                viewModel.listMenu[index].callBack,
              ),
              title: Text(viewModel.listMenu[index].title),
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
