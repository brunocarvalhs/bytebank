import 'package:bytebank/core/app_routers.dart';
import 'package:flutter/material.dart';

import 'package:bytebank/shared/themes/app_themes.dart';

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transferencia",
      theme: AppThemes.theme,
      initialRoute: AppRouters.initialRoute,
      routes: AppRouters.routers,
    );
  }
}