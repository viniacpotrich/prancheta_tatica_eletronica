import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';

class DatePickerWidgetViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  DateTime? startDate;
  DateTime? endDate;

  void pop() {
    if (validateDate()) {
      _navigationService.back(result: [startDate, endDate]);
    }
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs dataRange) {
    startDate = dataRange.value.startDate;
    endDate = dataRange.value.endDate;
  }

  bool validateDate() {
    if (startDate == null || endDate == null) {
      return false;
    }
    return true;
  }
}
