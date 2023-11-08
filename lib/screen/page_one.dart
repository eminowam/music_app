import 'package:flutter/material.dart';
import 'package:music_app/widget/home_widgets/discover.dart';
import 'package:music_app/widget/home_widgets/liked_card.dart';
import 'package:music_app/widget/home_widgets/main_text.dart';
import 'package:music_app/widget/home_widgets/new_release.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(top: 90,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainTextWidget(),
            SizedBox(height: 16,),
            Row(
              children: [
                LikedCardWidget(
                    image: 'assets/images/art.png',
                    text: 'Liked Songs'),
                LikedCardWidget(
                    image: "assets/images/art1.png",
                    text: 'Augisten Ft')
              ],
            ),
            SizedBox(height: 2,),
            Row(
              children: [
                LikedCardWidget(
                    image: 'assets/images/art2.png',
                    text: 'Emotional Songs'),
                LikedCardWidget(
                    image: "assets/images/art3.png",
                    text: 'Origin/Deluxe')
              ],
            ),
           const SizedBox(height: 2,),
            Row(
              children: [
                LikedCardWidget(
                    image: 'assets/images/art4.png',
                    text: 'Liked Songs'),
                LikedCardWidget(
                    image: "assets/images/art5.png",
                    text: '1000 Palace')
              ],
            ),
            SizedBox(height: 40,),
            NewReleaseWidget(),
            SizedBox(height: 45,),
            Text(" Discover something new",style: TextStyle(
                color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
            SizedBox(height: 19,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  DiscoverWidget(
                      image: 'assets/images/1.png',
                      title: 'Your weekly fresh',
                      subtitle: 'Enjoy music'),
                  SizedBox(width: 14,),
                  DiscoverWidget(
                      image: 'assets/images/2.png',
                      title: 'Your weekly fresh',
                      subtitle: 'Enjoy music'),
                  SizedBox(width: 14,),
                  DiscoverWidget(
                      image: 'assets/images/3.png',
                      title: 'Your weekly fresh',
                      subtitle: 'Enjoy music'),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
