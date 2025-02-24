import 'package:era_pro/era_pro_app.dart';
import 'package:era_pro/src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'dart:ui';

Future<void> main() async {
  //  Here we are calling the Dependency Injection
  //  This is the main app
  WidgetsFlutterBinding.ensureInitialized();
  // await initializeDateFormatting('en_US', null);
  await initializeDateFormatting('ar', null);
  String deviceLocale = window.locale.toString(); // e.g., "en_US"
  await initializeDateFormatting(deviceLocale.split('_').first, null);

  // Lock orientation to portrait only
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown, // Optional, if you want reverse portrait
  ]).then((_) async {
    await DependencyInjection.init();
    runApp(const EraProApp());
  });
}
