import 'package:flutter/material.dart';
import 'package:moviex/component/text-title.dart';

final List<String> categoryList = [
  "Action",
  "Science fiction",
  "Science fiction comedy",
  "Horror",
  "Romance",
  "Comedy",
  "Isekai",
  "Fantasy",
  'Superhero',
  "Adventure",
  "Noir",
  "Mystery",
  "Crime film",
  "Thriller",
  "Psychological thriller",
];

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      if (constrains.maxWidth > 800) {
        return const CategoryListDestop();
      } else {
        return const CategoryListMobile();
      }
    });
  }
}

class CategoryListMobile extends StatelessWidget {
  const CategoryListMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: "Category Movie"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: categoryList.map((category) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    category,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

class CategoryListDestop extends StatefulWidget {
  const CategoryListDestop({super.key});

  @override
  State<CategoryListDestop> createState() => _CategoryListDestopState();
}

class _CategoryListDestopState extends State<CategoryListDestop> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(title: "Category Movie"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: categoryList.map((category) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    category,
                    style: const TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
