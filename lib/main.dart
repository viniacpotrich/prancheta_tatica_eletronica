import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tactical_e_clipboard/app/app.bottomsheets.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:tactical_e_clipboard/ui/common/app_colors.dart';
import 'package:window_manager/window_manager.dart';

import 'app/app.dialogs.dart';
import 'my_custom_scroll_behavior.dart';

void _setDataBaseFactory() {
  setupBottomSheetUi();
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

Future<void> main() async {
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  WidgetsFlutterBinding.ensureInitialized();
  await WindowManager.instance.maximize();
  _setDataBaseFactory();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: kcPrimaryColor,
            brightness: Brightness.light,
            primary: kcPrimaryColor),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
