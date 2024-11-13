import 'package:flutter/material.dart';
import 'package:moviex/search-movie.dart';

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
      home: const Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To Moviex 👋",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  Text(
                    "Time to Relax & Enjoy the Movie",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    child: SearchMovie(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
