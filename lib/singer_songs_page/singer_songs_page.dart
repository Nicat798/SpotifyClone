// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:spotify_clone/singer_songs_page/widgets/image_part.dart';
import 'package:spotify_clone/singer_songs_page/widgets/searchbar_part.dart';
import 'package:spotify_clone/singer_songs_page/widgets/song_functions.dart';
import 'package:spotify_clone/singer_songs_page/widgets/songs_list_part.dart';
import 'package:spotify_clone/singer_songs_page/widgets/spotify_part.dart';

class SingerSongsPage extends StatelessWidget {
  const SingerSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 241, 154, 148),
            Color.fromARGB(255, 104, 59, 56),
            Color.fromARGB(255, 24, 14, 13),
            Color.fromARGB(255, 20, 12, 12),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 10.0, right: 16.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchBartPart(),
                      SizedBox(
                        height: 40.0,
                      ),
                      ImagePart(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Müxtəlif onilliklərin Azərbaycan pop hitləri. Üz: Sagopa",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      SpotifyPart(),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "1,584 likes  3h 6min",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SongsFunctions(),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SongsList(),
          ],
        ),
      ),
    );
  }
}
