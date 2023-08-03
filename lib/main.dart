import 'package:calculator_app/Style/style.dart';
import 'package:calculator_app/calculator_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
            color: colorWhite,
          ),
          headlineSmall: TextStyle(
            color: colorWhite.withOpacity(0.7),
          ),
        ),
      ),
      home: const CalculatorApp(),
    );
  }
}
