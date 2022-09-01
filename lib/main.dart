import 'package:flutter/material.dart';
import 'package:grocerry_app_ui/Screen/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash_Screen(),
    );
  }
}

