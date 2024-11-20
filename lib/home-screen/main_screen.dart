import 'package:flutter/material.dart';
import 'package:moviex/home-screen/category_list.dart';
import 'package:moviex/home-screen/continue-watching.dart';
import 'package:moviex/home-screen/header.dart';
import 'package:moviex/home-screen/popular_movie.dart';
import 'package:moviex/model/movie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Header(),
                CategoryList(),
                SizedBox(
                  height: 8.0,
                ),
                PopularMovie(),
                SizedBox(
                  height: 8.0,
                ),
                ContinueWatching(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
