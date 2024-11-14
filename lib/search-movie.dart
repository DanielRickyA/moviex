import 'package:flutter/material.dart';

class SearchMovie extends StatelessWidget {
  const SearchMovie({super.key});

  @override
  Widget build(Object context) {
    return const TextField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.orange,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        focusColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        labelText: "Search Movie",
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 188, 182, 182),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
