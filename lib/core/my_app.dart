import 'package:flutter/material.dart';
import 'package:nba_hub/config/themes/app_theme.dart';

import '../config/router/app_route.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getApplicationTheme(),
      initialRoute: AppRoute.loginRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
