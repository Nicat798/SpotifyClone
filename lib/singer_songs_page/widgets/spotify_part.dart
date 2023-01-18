// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SpotifyPart extends StatelessWidget {
  const SpotifyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 13.0,
          backgroundImage: AssetImage("assets/images/logo.png"),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          "Spotify",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
