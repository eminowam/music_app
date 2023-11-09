import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';
import 'package:music_app/config/app_style.dart';
import 'package:music_app/screen/details_screen.dart';


class LikedCardWidget extends StatelessWidget {
  const LikedCardWidget({
    super.key,
    required this.image,
    required this.text,});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsScreen()),),
      child: SizedBox(
          width: 180,
          height: 65,
       child: Card(
         color: AppColor.backCards,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10)
         ),
         child: Row(
           children: [
             Image(image: AssetImage(image)),
             SizedBox(width: 6),
             Text(text,style: AppTextStyle.cardMainTextStyle,)
           ],
         ),
       ),
      ),
    );
  }
}
