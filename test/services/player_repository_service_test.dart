import 'package:flutter_test/flutter_test.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PlayerRepositoryServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
