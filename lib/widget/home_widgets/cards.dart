import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class MusicCards extends StatelessWidget {
  const MusicCards(
      {super.key,
      required this.image,
      required this.text,
      required this.subTitle});

  final String image;
  final String text;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // height: 0,
      child: GestureDetector(
           child: Column(
             children: [
               Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                  child: Column(
                    children: [
                      Image(image: AssetImage(image)),
                    ],
                  ),
        ),
               ListTile(
                 title: Text(
                   text,
                   style: AppTextStyle.cardMainTextStyle,
                 ),
                 subtitle: Text(
                   subTitle,
                   style: AppTextStyle.cardSubTextStyle,
                 ),
               ),
             ],
           ),
      ),
    );
  }
}
