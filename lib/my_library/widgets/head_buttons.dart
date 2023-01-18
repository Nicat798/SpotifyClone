// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeadButtons extends StatelessWidget {
  const HeadButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: HeadButtonStyle().headButton,
          child: Text("Playlist"),
        ),
        SizedBox(
          width: 10.0,
        ),
        ElevatedButton(
          onPressed: () {},
          style: HeadButtonStyle().headButton,
          child: Text("Artists"),
        ),
      ],
    );
  }
}

class HeadButtonStyle {
  ButtonStyle headButton = ElevatedButton.styleFrom(
    shape: StadiumBorder(),
    backgroundColor: Colors.transparent,
    side: BorderSide(color: Colors.white),
  );
}
