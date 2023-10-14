import 'package:flutter/material.dart';
import 'package:lifting_state/screens/home_screen.dart';
import 'package:lifting_state/screens/second_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // changing the state when clicked the button at HomeScreen.dart
  Widget? activeScreen;

  @override
  void initState() {
    /*
      HomeScreen() has props onTapped which is a void function.
      We are using onTapped to execute the switchScreen() function.
      So, if we press on the "Next Screen" button that is present in HomeScreen.dart,
      then we will move to the next screen that is SecondScreen.dart
     */
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const SecondScreen();
      print("Button was Tapped!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: activeScreen,
    );
  }
}
