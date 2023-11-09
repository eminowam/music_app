import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key, required this.image, required this.title, required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
        Row(
          children: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.favorite,color: Colors.green,)),
            IconButton(onPressed: (){},
                icon: Icon(Icons.more_vert,color: Colors.white,))
          ],
        )

    ]
    );
  }
}
