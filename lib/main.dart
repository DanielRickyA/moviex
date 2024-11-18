import 'package:flutter/material.dart';
import 'package:moviex/home-screen/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Moviex",
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(31, 63, 63, 63)),
      home: const MainScreen(),
    );
  }
}
