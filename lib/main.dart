import 'package:flutter/material.dart';
import 'package:moviex/category-list.dart';
import 'package:moviex/model/movie.dart';
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
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Welcome To Moviex 👋",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const Text(
                    "Time to Relax & Enjoy the Movie",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: SearchMovie(),
                  ),
                  const CategoryList(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Populer Movie",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View All",
                          style: TextStyle(fontSize: 16, color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: movieList
                          .where((movie) => movie.id >= 1 && movie.id <= 5)
                          .map((Movie movie) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 150),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    movie.poster,
                                    width: 150,
                                    height: 200,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  movie.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Continue Watching",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View All",
                          style: TextStyle(fontSize: 16, color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: movieList
                          .where((movie) => movie.id >= 6 && movie.id <= 10)
                          .map((Movie movie) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 150),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    movie.poster,
                                    width: 150,
                                    height: 200,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  movie.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
