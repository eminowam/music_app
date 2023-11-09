import 'package:flutter/material.dart';
import 'package:music_app/config/app_style.dart';

class DetailsMusicItem extends StatelessWidget {
  const DetailsMusicItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icon(Icons.expand_more,color: Colors.white,size: 35,)),
                Column(
                  children: [
                    Text("PLAYED FROM YOUR LIBRARY",style: TextStyle(
                      fontSize: 12,color: Colors.white
                    ),),
                    Text("Liked Songs",style: AppTextStyle.cardMainTextStyle,)
                  ],
                ),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.more_vert,color: Colors.white,size: 35,))
              ],
        ),
        SizedBox(height: 110,),
        Center(
          child: Image(image: AssetImage('assets/images/Kwaku.png'),),
        ),
      ],
    );
  }
}
