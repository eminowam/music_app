import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class RecommendedSingers extends StatelessWidget {
  const RecommendedSingers({super.key, required this.text, required this.subTitle, required this.image});
final String text;
final String subTitle;
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        // backgroundBlendMode: Color(0xff9D1DCA)
      ),
      child: GestureDetector(
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  backgroundImage: AssetImage(image),
                ),
              ),
              // Image(image: AssetImage(image)),
              ListTile(
                title: Text(text,
                style: AppTextStyle.cardMainTextStyle,),
                subtitle: Text(subTitle,
                    style: AppTextStyle.cardSubTextStyle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
