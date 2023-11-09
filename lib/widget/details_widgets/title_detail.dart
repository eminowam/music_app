import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class TitleDetail extends StatelessWidget {
  const TitleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Liked Songs',style: AppTextStyle.appBarTextStyle,),
        SizedBox(height: 9,),
        Text('299 songs',style: AppTextStyle.cardSecondTextStyle,),
        SizedBox(height: 9,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(onPressed: (){}, 
              icon: Image.asset('assets/icons/Downloaded.png')),
            IconButton(onPressed: (){}, 
                icon: Image.asset('assets/icons/shuff.png'))
        ],)
      ],
    );
  }
}
