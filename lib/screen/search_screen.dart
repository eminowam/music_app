import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';
import 'package:music_app/config/app_style.dart';
import 'package:music_app/widget/search_widget/search_card.dart';
import 'package:music_app/widget/search_widget/search_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 90,left: 10,right: 10,bottom: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Search",style: AppTextStyle.appBarTextStyle,),
            SizedBox(height: 28,),
            SearchWidget(),
            SizedBox(height: 12,),
            Text("Your genres top",style: AppTextStyle.cardMainTextStyle,),
            SizedBox(height: 12,),
            Row(
              children: [
               SearchCard(
                   image: 'assets/images/pop.png'),
                SizedBox(width: 8,),
                SearchCard(image: 'assets/images/cris.png')
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                SearchCard(
                    image: 'assets/images/Rock.png'),
                SizedBox(width: 8,),
                SearchCard(image: 'assets/images/Indie.png')
              ],
            ),
            SizedBox(height: 26,),
            Text("Brows all",style: AppTextStyle.cardMainTextStyle,),
            SizedBox(height: 12,),
            Row(
              children: [
                SearchCard(
                    image: 'assets/images/Charts.png'),
                SizedBox(width: 8,),
                SearchCard(image: 'assets/images/Decades.png')
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                SearchCard(
                    image: 'assets/images/Workout.png'),
                SizedBox(width: 8,),
                SearchCard(image: 'assets/images/Party.png')
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                SearchCard(
                    image: 'assets/images/Charts.png'),
                SizedBox(width: 8,),
                SearchCard(image: 'assets/images/Decades.png')
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                SearchCard(
                    image: 'assets/images/Focus.png'),
                SizedBox(width: 8,),
                SearchCard(image: 'assets/images/pop.png')
              ],
            ),

          ],
        ),
      ),
    );
  }
}
