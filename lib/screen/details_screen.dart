import 'package:flutter/material.dart';
import 'package:music_app/widget/details_widgets/card_detail.dart';
import 'package:music_app/widget/details_widgets/title_detail.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff271363) ,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xff271363),
                  // Color(0xff892FE0),
                  Color(0xf9060708)
                ],
                begin: FractionalOffset(
                  0.0,
                  0.1,
                ),
                end: FractionalOffset(
                  0.0,
                  0.2,
                ),
                stops: [0.0, 3.0],
                tileMode: TileMode.clamp),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TitleDetail(),
                SizedBox(height: 38,),
                CardDetails(
                    image: 'assets/images/art1.png',
                    title: 'Pretty Girl',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art2.png',
                    title: 'Its so easy To Do',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art3.png',
                    title: 'Pretty Savage',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art4.png',
                    title: 'Pretty Boy',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art5.png',
                    title: 'Pretty Girl',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art3.png',
                    title: 'Pretty Girl',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art1.png',
                    title: 'Pretty Girl',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art2.png',
                    title: 'Pretty Girl',
                    subTitle: 'NE-YO & Shakira'),
                SizedBox(height: 16,),
                CardDetails(
                    image: 'assets/images/art4.png',
                    title: 'Pretty Girl',
                    subTitle: 'NE-YO & Shakira'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
