import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class DiscoverWidget extends StatelessWidget {
  const DiscoverWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 220,
      child: Column(
        children: [
          Image(image: AssetImage(image)),
          SizedBox(height: 7,),
            Text(title,style: AppTextStyle.cardMainTextStyle,),
            Text(subtitle,style: AppTextStyle.cardSecondTextStyle,),
        ],
      ),
    );
  }
}
