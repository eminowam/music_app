import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';
import 'package:music_app/config/app_style.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
              child:Image(image: AssetImage(image)),
      ),
    );
  }
}
