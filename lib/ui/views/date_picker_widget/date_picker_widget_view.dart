import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'date_picker_widget_viewmodel.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DatePickerWidgetView extends StackedView<DatePickerWidgetViewModel> {
  const DatePickerWidgetView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DatePickerWidgetViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecione um periodo"),
        actions: [
          IconButton(onPressed: viewModel.pop, icon: Icon(Icons.check))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Container(
          child: SfDateRangePicker(
            selectionMode: DateRangePickerSelectionMode.range,
            onSelectionChanged: (dateRangePickerSelectionChangedArgs) =>
                viewModel
                    .onSelectionChanged(dateRangePickerSelectionChangedArgs),
          ),
        ),
      ),
    );
  }

  @override
  DatePickerWidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DatePickerWidgetViewModel();
}
