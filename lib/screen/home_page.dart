import 'package:flutter/material.dart';
import 'package:music_app/screen/page_one.dart';
import 'favorite_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                begin:  FractionalOffset(0.0, 0.1,),
                end:  FractionalOffset(0.0, 0.2,),
                stops: [0.0, 3.0],
                tileMode: TileMode.clamp),),
          child: Column(
            children: [
               Builder(
                builder: (context) {
                  if (_currentIndex == 0) {
                    return PageOne();
                  } else if (_currentIndex == 1) {
                    return FavoriteScreen();
                  }
                  return const SizedBox();
                },
              )
            ],

          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        backgroundColor: Colors.black87,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white24,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Home")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
