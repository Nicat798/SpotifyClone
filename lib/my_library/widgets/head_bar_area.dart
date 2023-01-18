// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeadArea extends StatelessWidget {
  const HeadArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          width: 40,
          height: 40,
          child: Center(
            child: Text(
              "N",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(
          "Your Library",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30.0,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: Icon(
            Icons.add,
            size: 30.0,
          ),
        )
      ],
    );
  }
}
