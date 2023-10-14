import 'package:flutter/material.dart';

import 'package:lifting_state/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: WelcomeScreen(),
      ),
    );
  }
}
