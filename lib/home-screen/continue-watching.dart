import 'package:flutter/material.dart';
import 'package:moviex/component/text-title.dart';
import 'package:moviex/detail_movie.dart';
import 'package:moviex/model/movie.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      if (constrains.maxWidth > 800) {
        return const ContinueWatchingDestop();
      } else {
        return const ContinueWatchingMobile();
      }
    });
  }
}

class ContinueWatchingMobile extends StatelessWidget {
  const ContinueWatchingMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: "Continue Watching"),
        const SizedBox(
          height: 8.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: movieList
                .where((movie) => movie.id >= 7 && movie.id <= 12)
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

class ContinueWatchingDestop extends StatelessWidget {
  const ContinueWatchingDestop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: "Continue Watching"),
        const SizedBox(
          height: 8.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: movieList
                .where((movie) => movie.id >= 7 && movie.id <= 12)
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
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            movie.poster,
                            width: 300,
                            height: 400,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          movie.name,
                          style: const TextStyle(
                            fontSize: 20,
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
