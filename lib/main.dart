import 'package:flutter/material.dart';
import '/config/colors.dart';
import 'Screens/home/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Suivi Apprenants ODK',
        theme: ThemeData(
          primarySwatch: Palette.mainColor,
        ),
        home: const WelcomeScreen());
  }
}
