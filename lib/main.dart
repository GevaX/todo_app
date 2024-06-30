import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/utils/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF78FF),
          brightness: Brightness.dark,
          surface: Colors.black38, // Dark background color
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.heebo(
            fontSize: 30,
          ),
          bodyMedium: GoogleFonts.heebo(),
          displaySmall: GoogleFonts.heebo(),
        ),
      ),
      home: const NavBar(),
    );
  }
}
