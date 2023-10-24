import 'package:flutter/material.dart';
import 'package:music_app/widget/home_widgets/cards.dart';
import 'package:music_app/widget/home_widgets/text_row.dart';
import 'package:music_app/widget/home_widgets/text_search.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 54,bottom: 24,left: 24,right: 24
            ),
            child: Column(
              children: [
                SearchWidget(),
                SizedBox(height: 40,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextRow(
                          text: "Recent"),
                      SizedBox(width: 32,),
                      TextRow(
                          text: "Top 50"),
                      SizedBox(width: 32,),
                      TextRow(
                          text: "Chill"),
                      SizedBox(width: 32,),
                      TextRow(
                          text: "R&B"),
                      SizedBox(width: 32,),
                      TextRow(
                          text: "Festival"),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MusicCards(
                        image: "assets/img.png",
                        text: "R&B Playlist",
                        subTitle: "Chill your mind",
                      ),
                      SizedBox(width: 9,),
                      MusicCards(
                        image: "assets/img.png",
                        text: "Daily Mix 2",
                        subTitle: "Made for you",
                      ),
                      SizedBox(width: 9,),
                      MusicCards(
                        image: "assets/img.png",
                        text: "Hip Hop",
                        subTitle: "Feel the beat",
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
    );
  }
}
