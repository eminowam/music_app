import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          color: AppColor.backMain,
        ),
    );
  }
}
