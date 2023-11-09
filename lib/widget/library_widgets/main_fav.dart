import 'package:flutter/material.dart';


class MainFavWidget extends StatelessWidget {
   MainFavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search,color: Colors.white,size: 30,)),
            IconButton(
                onPressed: (){},
                icon:Icon(Icons.add,color: Colors.white,size: 34,)),
          ],
        )
      ],
    );
  }
}