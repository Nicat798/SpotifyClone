// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SongsFunctions extends StatelessWidget {
  const SongsFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.only(right: 30.0, top: 15.0),
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border_outlined,
            size: 28.0,
          ),
        ),
        IconButton(
          padding: EdgeInsets.only(right: 30.0, top: 15.0),
          constraints: BoxConstraints(),
          icon: Icon(
            Icons.download_for_offline_outlined,
            size: 28.0,
          ),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.only(right: 30.0, top: 15.0),
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            size: 28.0,
          ),
        ),
        Spacer(),
        IconButton(
          padding: EdgeInsets.only(right: 30.0, top: 15.0),
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: Icon(
            Icons.loop_outlined,
            size: 28.0,
          ),
        ),
        IconButton(
          padding: EdgeInsets.only(right: 10.0),
          onPressed: () {},
          icon: Icon(
            Icons.play_circle,
            color: Colors.green,
            size: 60.0,
          ),
        ),
      ],
    );
  }
}
