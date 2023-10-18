import 'package:flutter/material.dart';
import 'package:tactical_e_clipboard/app/app.bottomsheets.dart';
import 'package:tactical_e_clipboard/app/app.locator.dart';
import 'package:tactical_e_clipboard/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'app/app.dialogs.dart';

void _setDataBaseFactory() {
  setupBottomSheetUi();
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

Future<void> main() async {
  await setupLocator(); //TODO Remover daqui e colocar na inicialização
  setupDialogUi();
  setupBottomSheetUi();
  WidgetsFlutterBinding.ensureInitialized();
  _setDataBaseFactory();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
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
