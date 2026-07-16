import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stylek_app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      useOnlyLangCode: true,
      child: const MainApp(),
    ),
  );
}
