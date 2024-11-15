import 'package:flutter/material.dart';
import 'package:unit_6_assignment_pamplona/screens/home_screen.dart';
import 'package:unit_6_assignment_pamplona/screens/about_me.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aesthetic Flutter App',
      theme: ThemeData(
        primaryColor: Colors.pink[100],
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          secondary: Colors.green[100],
        ),
        scaffoldBackgroundColor: Colors.pink[50],
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.pink[200],
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black87),
          titleTextStyle: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about_me': (context) => const AboutMe(),
      },
    );
  }
}
