import 'package:flutter/material.dart';
import 'package:navigation/calculator.dart';
import 'package:navigation/contacts.dart';
import 'package:navigation/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/calculator': (context) => CalculatorApp(),
        '/about': (context) => ContactUsPage(),
      },
    );
  }
}
