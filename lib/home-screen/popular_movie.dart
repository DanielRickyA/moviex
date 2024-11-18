import 'package:flutter/material.dart';
import 'package:moviex/model/movie.dart';
import 'package:moviex/detail_movie.dart';

class PopularMovie extends StatelessWidget {
  const PopularMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailMovie(movie: movie),
                      ),
                    );
                  },
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
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
