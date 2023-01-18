// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../singer_songs_page/singer_songs_page.dart';

Padding songStructure(
    BuildContext context, int index, List<Map<String, String>> listItem) {
  return Padding(
    padding: const EdgeInsets.only(right: 19.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SingerSongsPage()));
      },
      child: SizedBox(
        height: 154.0,
        width: 154.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(listItem[index]["imageLink"]!),
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 13.0,
            ),
            Text(
              listItem[index]["name"]!,
              style: GoogleFonts.nunito(
                  color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    ),
  );
}
