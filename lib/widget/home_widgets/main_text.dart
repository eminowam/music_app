import 'package:flutter/material.dart';

class MainTextWidget extends StatelessWidget {
  const MainTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Good evening",style: TextStyle(color: Colors.white,fontSize: 24),),
        Row(
          children: [
            Icon(Icons.notifications_none_outlined,color: Colors.white,),
            SizedBox(width: 12,),
            Icon(Icons.history,color: Colors.white,),
            SizedBox(width: 12,),
            Icon(Icons.settings,color: Colors.white,),
          ],
        )
      ],
    );
  }
}
