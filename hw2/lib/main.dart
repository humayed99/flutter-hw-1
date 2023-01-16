import 'package:flutter/material.dart';
import 'package:flutter_hw_2/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 0, 18, 43)),
      ),
      home: const HomePage(title: "Welcome to Sara's App!"),
    );
  }
}
