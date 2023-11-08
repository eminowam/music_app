import 'package:flutter/material.dart';


class MainFavWidget extends StatelessWidget {
   MainFavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Your Library",style: TextStyle(color: Colors.white,fontSize: 24),),
        Row(
          children: [
            Icon(Icons.search,color: Colors.white,size: 30,),
            SizedBox(width: 12,),
            Icon(Icons.add,color: Colors.white,size: 34,),
          ],
        )
      ],
    );
  }
}