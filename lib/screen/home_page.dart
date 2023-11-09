import 'package:flutter/material.dart';
import 'package:music_app/screen/page_one.dart';
import 'package:music_app/screen/search_screen.dart';
import 'library_screen.dart';

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
                    return SearchScreen();
                  }else if(_currentIndex==2){
                    return LibraryScreen();
                  }
                  return SizedBox();
                },
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset('assets/icons/home_active.png'),
              icon: Image.asset('assets/icons/home.png'), label: "Home"),
          BottomNavigationBarItem(
              activeIcon: Image.asset('assets/icons/search_active.png'),
              icon: Image.asset('assets/icons/search.png'), label: "Search"),
          BottomNavigationBarItem(
              activeIcon: Image.asset('assets/icons/library_avtive.png'),
              icon: Image.asset('assets/icons/library.png'), label: "Your Library")
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
