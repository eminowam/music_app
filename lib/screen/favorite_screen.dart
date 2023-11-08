import 'package:flutter/material.dart';
import 'package:music_app/widget/favorite_widgets/main_fav.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(top: 90,right: 15,left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainFavWidget()
          ],
        ),
      ),
    );
  }
}
