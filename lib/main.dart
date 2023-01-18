// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:spotify_clone/home/home_page.dart';
import 'package:spotify_clone/settings_page/settings_page.dart';
import 'package:spotify_clone/singer_songs_page/singer_songs_page.dart';

import 'my_library/my_library.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          titleSpacing: 10,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
