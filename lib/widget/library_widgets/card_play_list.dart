import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(image: AssetImage(image)),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: AppTextStyle.cardMainTextStyle,),
              Text(subTitle,style:AppTextStyle.cardSecondTextStyle)
            ],
          )
        ],
      ),
    );
  }
}
