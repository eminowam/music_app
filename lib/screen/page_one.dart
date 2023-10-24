import 'package:flutter/material.dart';
import 'package:music_app/widget/home_widgets/text_search.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 54,bottom: 24,left: 24,right: 24
            ),
            child: Column(
              children: [
                SearchWidget()
              ],
            ),
          ),
    );
  }
}
