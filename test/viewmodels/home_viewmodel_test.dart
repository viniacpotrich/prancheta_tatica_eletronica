import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tactical_e_clipboard/app/app.bottomsheets.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/ui/common/app_strings.dart';
import 'package:tactical_e_clipboard/ui/views/home/home_viewmodel.dart';

import '../helpers/test_helpers.dart';

void main() {
  HomeViewModel getModel() => HomeViewModel();

  group('HomeViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    group('showBottomSheet -', () {
      test('When called, should show custom bottom sheet using notice variant',
          () {
        final bottomSheetService = getAndRegisterBottomSheetService();

        final model = getModel();
        model.showBottomSheet();
        verify(bottomSheetService.showCustomSheet(
          variant: BottomSheetType.notice,
          title: ksHomeBottomSheetTitle,
          description: ksHomeBottomSheetDescription,
        ));
      });
    });
  });
}
