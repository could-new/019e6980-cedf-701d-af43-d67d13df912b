import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const PictorialApp());
}

class PictorialApp extends StatelessWidget {
  const PictorialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pictorial FX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D0D11),
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFF00E5FF), // Cyan accent
          secondary: const Color(0xFF7000FF), // Deep purple
          surface: const Color(0xFF1A1A24),
          background: const Color(0xFF0D0D11),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w900),
          displayMedium: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontFamily: 'OpenSans', height: 1.6),
          bodyMedium: TextStyle(fontFamily: 'OpenSans', height: 1.6),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
