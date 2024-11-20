import 'package:flutter/material.dart';
import 'package:moviex/home-screen/search_movie.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      if (constrains.maxWidth > 800) {
        return const HeaderDestop();
      } else {
        return const HeaderMobile();
      }
    });
  }
}

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: SearchMovie(),
        ),
      ],
    );
  }
}

class HeaderDestop extends StatelessWidget {
  const HeaderDestop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome To Moviex 👋",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                ),
                Text(
                  "Time to Relax & Enjoy the Movie",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
            Expanded(flex: 2, child: SizedBox()),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: SearchMovie(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
