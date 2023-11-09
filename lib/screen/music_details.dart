import 'package:flutter/material.dart';
import 'package:music_app/config/app_color.dart';
import 'package:music_app/widget/details_widgets/music_details.dart/details_play.dart';
import 'package:music_app/widget/details_widgets/music_details.dart/details_row.dart';

class MusicDetails extends StatelessWidget {
  const MusicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backDetail,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,left: 15,right: 15,bottom: 20
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DetailsMusicItem(),
              SizedBox(height: 50,),
              DetailsPlay()
              ],
          ),
        ),
      ),
    );
  }
}
