import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';
import 'package:music_app/config/app_style.dart';
import 'package:music_app/widget/library_widgets/card_play_list.dart';
import 'package:music_app/widget/library_widgets/main_fav.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 90,left: 15,right: 15,bottom: 20
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Library",style:AppTextStyle.appBarTextStyle ,),
                 MainFavWidget()
                ],
              ),
              SizedBox(height: 30,),
              CardList(
                  image: 'assets/images/art.png',
                  title: 'Liked Songs',
                  subTitle: 'Playlist / 299 songs'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art1.png',
                  title: 'The Hills',
                  subTitle: 'Playlist / 100 songs'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art2.png',
                  title: 'Donce in the Night',
                  subTitle: 'Album / Dua Lipa'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art3.png',
                  title: 'Array in The Left',
                  subTitle: 'Playlist / 299 songs'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art4.png',
                  title: 'LOVE',
                  subTitle: 'Playlist / 212 songs'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art5.png',
                  title: 'Likey',
                  subTitle: 'Playlist / 64 songs'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/avatar.png',
                  title: 'Option Style',
                  subTitle: 'Playlist / 299 songs'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art2.png',
                  title: 'How You Like That',
                  subTitle: 'Album / CRYXXEN'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art3.png',
                  title: 'Seriosly',
                  subTitle: 'Playlist / SM'),
              SizedBox(height: 18,),
              CardList(
                  image: 'assets/images/art1.png',
                  title: 'Pochty Senior',
                  subTitle: 'Album / Aim Eminowa'),
              SizedBox(height: 18,),
             Row(
               children: [
                 Image(image: AssetImage('assets/images/add.png')),
                 SizedBox(width: 15,),
                 Text("Add artist",style: AppTextStyle.cardMainTextStyle,)
               ],
             ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Image(image: AssetImage('assets/images/addp.png')),
                  SizedBox(width: 15,),
                  Text("Add podcasts & shows",style: AppTextStyle.cardMainTextStyle,)
                ],
              )
            ],
          ),
        ),
    );
  }
}

