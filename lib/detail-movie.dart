import 'package:flutter/material.dart';
import 'package:moviex/model/movie.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;

  const DetailMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.name),
      ),
      body: Center(
        child: Text('Details for ${movie.name}'),
      ),
    );
  }
}
