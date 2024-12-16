import 'package:flutter/material.dart';
import 'package:test_project/screens/off_screen.dart';
import 'package:test_project/screens/on_screen/on_screen.dart';
import 'package:test_project/screens/settings_screen/settings_screen.dart';
import 'package:test_project/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.noScaling,
        ),
        child:
          //const OffScreen(),
        //const WelcomeScreen(),
         //const SettingsScreen(),
         const OnScreen(),
      ),
    );
  }
}
