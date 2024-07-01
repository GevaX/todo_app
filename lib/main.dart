import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/utils/nav_bar.dart';

import 'constants/app_theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF211F26),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppTheme.primaryColor,
        brightness: Brightness.dark,
        textTheme: AppTheme.textTheme,
      ),
      home: const NavBar(),
    );
  }
}
