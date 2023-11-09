import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
        style: const TextStyle(color: Colors.black),
    cursorColor: Colors.black,
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide:
    BorderSide(color: Colors.white)),
    prefixIcon:  Image(image:AssetImage('assets/icons/search.png'),
    color: Colors.black87,
    ),
    hintText: "Artists,songs or pocasts",
    hintStyle: const TextStyle(
    color: Colors.black54,
    fontSize: 15,
    )),
    );
  }
}
