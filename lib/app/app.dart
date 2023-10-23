import 'package:flutter/material.dart';
import 'package:music_app/app/screen/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "OpenSans"
      ),

      home:HomePage() ,
    );
  }
}
