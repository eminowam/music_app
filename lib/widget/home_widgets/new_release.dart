import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';
import 'package:music_app/config/app_style.dart';

class NewReleaseWidget extends StatelessWidget {
  const NewReleaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.png'),),
            SizedBox(width: 10,),
            Column(
              children: [
                Text("NEW RELEASE FROM",style: TextStyle(
                  color: Colors.white24,fontSize: 11
                ),),
                Text("Dean Lewis",style: TextStyle(
                    color: Colors.white,fontSize: 23
                ),)
              ],
            )
          ],
        ),
        SizedBox(height: 18,),
    SizedBox(
    width: 380,
    height: 150,
    child: Card(
    color: AppColor.backCards,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
    children: [
    Image(image: AssetImage('assets/images/art6.png')),
    SizedBox(width: 6,),
    Padding(
      padding: const EdgeInsets.all(17.0),
      child: Column(
      children: [
      Text("Hurtless(Acoustic)",
      style: AppTextStyle.cardMainTextStyle,),
        SizedBox(height: 3,),
        Text("Single (Dean Lewis)",
          style: AppTextStyle.cardSecondTextStyle,),
      ],
      ),
    ),
      Row(
        children: [
          Icon(Icons.favorite_outline,color: Colors.white,),
          SizedBox(width: 7,),
          Icon(Icons.play_circle,color: Colors.white,),
        ],
      )
    ],
    ),
    ),
    ),
      ],
    );
  }
}
