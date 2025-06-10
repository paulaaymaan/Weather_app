import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'src/features/weather/presentation/screens/splash_screen.dart'; // Import your splash screen

void main() {
  runApp(const ProviderScope(child: MyApp())); // Wrap with ProviderScope
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(
              0xFF2196F3), // Set a default app bar color if not transparent
          foregroundColor: Colors.white, // Text color
        ),
      ),
      debugShowCheckedModeBanner: false, // Optional
      home: const SplashScreen(), // Start with the splash screen
    );
  }
}
