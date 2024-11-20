import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      if (constrains.maxWidth > 800) {
        return TextTitleDestop(
          title: title,
        );
      } else {
        return TextTitleMobile(
          title: title,
        );
      }
    });
  }
}

class TextTitleMobile extends StatelessWidget {
  final String title;
  const TextTitleMobile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View All",
            style: TextStyle(fontSize: 16, color: Colors.orange),
          ),
        ),
      ],
    );
  }
}

class TextTitleDestop extends StatelessWidget {
  final String title;
  const TextTitleDestop({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 36, color: Colors.white),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View All",
            style: TextStyle(fontSize: 18, color: Colors.orange),
          ),
        ),
      ],
    );
  }
}
