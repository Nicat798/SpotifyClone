// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/home/sources/home_source.dart';

class RecentsParts extends StatelessWidget {
  const RecentsParts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: 3.3,
        ),
        itemCount: recents.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image(
                  width: 50.0,
                  image: AssetImage(recents[index]["imageLink"]!),
                ),
              ),
              SizedBox(
                width: 9.0,
              ),
              Flexible(
                child: Text(
                  recents[index]["name"]!,
                  style: GoogleFonts.nunito(fontWeight: FontWeight.bold),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
