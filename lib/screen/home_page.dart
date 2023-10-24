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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
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
      body: Builder(
        builder: (context) {
          if (_currentIndex == 0) {
            return PageOne();
          } else if (_currentIndex == 1) {
            return FavoriteScreen();
          }
          return SizedBox();
        },
      ),
    );
  }
}
