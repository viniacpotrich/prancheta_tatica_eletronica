import 'package:flutter_test/flutter_test.dart';
import 'package:prancheta_tatica_eletronica/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('PatternOfPlayDetailViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
