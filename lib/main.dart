import 'package:dartsellers/Login/LogInScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Riders',
      theme: ThemeData(
        primaryColor: Color(0xFFA4CF70),
        accentColor: Color(0xFF2f2e41),
        backgroundColor: Colors.white
      ),
      home: LogInScreen(),
    );
  }
}

