// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicProdcastsPart extends StatelessWidget {
  const MusicProdcastsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Music",
            style: GoogleFonts.nunito(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
        TextButton(
          onPressed: () => () {},
          child: Text(
            "Podcasts & Shows",
            style: GoogleFonts.nunito(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
