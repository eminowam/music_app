import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class DetailsPlay extends StatelessWidget {
  const DetailsPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Kwaku the Traveller',style: TextStyle(
                  color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 6,),
                Text('  Black Sherif',style: TextStyle(
                    fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xffA5A5A5)
                ),)
              ],
            ),
            Icon(Icons.favorite,color: Colors.greenAccent,size: 30,)
          ],
        ),
        SizedBox(height: 22,),
        Image(image: AssetImage('assets/images/Seed.png')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('0:30',style: AppTextStyle.cardSecondTextStyle,),
            Text('3:35',style: AppTextStyle.cardSecondTextStyle,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage('assets/icons/Shuffle (2).png')),
            Image(image: AssetImage('assets/icons/Previous.png')),
            Image(image: AssetImage('assets/icons/Pause.png')),
            Image(image: AssetImage('assets/icons/Next.png')),
            Image(image: AssetImage('assets/icons/Repeat.png')),
          ],
        )
      ],
    );
  }
}
