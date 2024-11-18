import 'package:flutter/material.dart';
import 'package:moviex/model/movie.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;

  const DetailMovie({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 550,
                  width: double.infinity,
                  child: Image.asset(
                    movie.poster,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        const SaveMovieButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    movie.name,
                    style: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Duration: ${movie.duration} • ⭐ ${movie.rating}/10 from IMDb",
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: movie.category.map((item) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              item,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Synopsis: ",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  ExpandableText(synopsis: movie.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key, required this.synopsis});

  final String synopsis;
  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          isExpanded ? widget.synopsis : widget.synopsis.substring(0, 120),
          softWrap: true,
          overflow: TextOverflow.fade,
          style: const TextStyle(color: Colors.white, fontSize: 18.0),
          textAlign: TextAlign.justify,
        ),
        widget.synopsis.length > 100
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  (TextButton(
                    child: Text(
                      isExpanded ? 'See Less' : "See More",
                      style:
                          const TextStyle(color: Colors.orange, fontSize: 20.0),
                      textAlign: TextAlign.end,
                    ),
                    onPressed: () => setState(() => isExpanded = !isExpanded),
                  )),
                ],
              )
            : const SizedBox()
      ],
    );
  }
}

class SaveMovieButton extends StatefulWidget {
  const SaveMovieButton({super.key});

  @override
  State<SaveMovieButton> createState() => _SaveMovieButtonState();
}

class _SaveMovieButtonState extends State<SaveMovieButton> {
  bool isSave = false;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        icon: Icon(
          isSave ? Icons.turned_in : Icons.turned_in_not,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isSave = !isSave;
          });
        },
      ),
    );
  }
}
