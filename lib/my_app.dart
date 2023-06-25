import 'package:flutter/material.dart';
import 'package:nba_hub/theme/app_theme.dart';
import 'package:nba_hub/view/dashboard.dart';
import 'package:nba_hub/view/login_view.dart';
import 'package:nba_hub/view/signup_view.dart';

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
      initialRoute: "/",
      theme: AppTheme.getApplicationTheme(),
      routes: {
        "/": (context) => const Login(),
        "/signup": (context) => const SignUp(),
        "/dashboard": (context) => const Dashboard(),
      },
    );
  }
}
