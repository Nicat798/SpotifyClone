// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify_clone/constans/strings.dart';
import 'package:spotify_clone/home/widgets/head_line_texts.dart';
import 'package:spotify_clone/home/widgets/jump_back_in.dart';
import 'package:spotify_clone/home/widgets/made_for_part.dart';
import 'package:spotify_clone/home/widgets/music_podcasts._part.dart';
import 'package:spotify_clone/home/widgets/recents_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: "Premium",
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          AppStrings().goodMorning,
          style: GoogleFonts.nunito(fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.access_time_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(
          children: [
            MusicProdcastsPart(),
            SizedBox(
              height: 5.0,
            ),
            RecentsParts(),
            SizedBox(
              height: 20.0,
            ),
            HeadLineTexts(currentText: "Made For ${AppStrings().userName}"),
            SizedBox(height: 16.0),
            MadeForPart(),
            SizedBox(
              height: 10.0,
            ),
            HeadLineTexts(currentText: "Jump Back In"),
            SizedBox(height: 16.0),
            JumpBackInPart(),
          ],
        ),
      ),
    );
  }
}
