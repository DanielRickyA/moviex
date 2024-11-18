import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Category Movie",
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Action",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Science fiction",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Horror",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Romance",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Comedy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Isekai",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Fantasy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
