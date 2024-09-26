import 'package:flutter/material.dart';
import 'package:unit4_assignment_simpas/body.dart';
import 'package:unit4_assignment_simpas/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          // Add SingleChildScrollView
          child: Column(
            children: [
              const header(), // Call Header widget
              const body(), // Call Body widget
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
