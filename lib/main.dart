import 'package:flutter/gestures.dart';
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
      scrollBehavior: MyScrollBehavior(),
      title: "Moviex",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(31, 63, 63, 63),
      ),
      home: const MainScreen(),
    );
  }
}

class MyScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
