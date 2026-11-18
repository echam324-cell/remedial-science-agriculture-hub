import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class RemedialHubApp extends StatelessWidget {
  const RemedialHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    const forest = Color(0xFF176B50);
    return MaterialApp(
      title: 'Remedial Science & Agriculture Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: forest, primary: forest, secondary: const Color(0xFFE5AD3D), surface: const Color(0xFFF7F8F5)),
        scaffoldBackgroundColor: const Color(0xFFF7F8F5),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFF7F8F5), foregroundColor: Color(0xFF17372D), elevation: 0),
        cardTheme: CardThemeData(color: Colors.white, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: const BorderSide(color: Color(0xFFE8ECE7)))),
      ),
      home: const HomeScreen(),
    );
  }
}
