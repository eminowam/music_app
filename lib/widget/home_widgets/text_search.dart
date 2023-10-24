import 'package:flutter/material.dart';


class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Welcome back!",
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
        SizedBox(height: 8,),
        Text("What do you feel like today?",
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
        SizedBox(height: 24,),
        SearchBar(
          hintText: "Search song, playlist, artist...",
          hintStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 13)),
          leading: Icon(Icons.search),
          // trailing: const [Icon(Icons.search)],
        ),

      ],
    );
  }
}
