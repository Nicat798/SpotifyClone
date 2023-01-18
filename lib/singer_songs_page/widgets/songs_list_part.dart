// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../sources/songs_sources.dart';

class SongsList extends StatelessWidget {
  const SongsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: singersSongs.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading:
                  Image(image: AssetImage(singersSongs[index]["imageLink"]!)),
              subtitle: Text(singersSongs[index]["singerName"]!),
              title: Text(singersSongs[index]["songName"]!),
            );
          },
        ),
      ),
    );
  }
}
