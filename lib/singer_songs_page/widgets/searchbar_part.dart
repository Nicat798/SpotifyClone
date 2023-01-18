// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBartPart extends StatelessWidget {
  const SearchBartPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              hintText: "Find in playlist",
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Color.fromARGB(255, 201, 131, 128),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 201, 131, 128),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          ),
          onPressed: () {},
          child: Text("Sort"),
        )
      ],
    );
  }
}
