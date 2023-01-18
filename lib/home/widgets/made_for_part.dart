import 'package:flutter/material.dart';
import 'package:spotify_clone/home/sources/home_source.dart';
import 'package:spotify_clone/home/widgets/song_structure.dart';

class MadeForPart extends StatelessWidget {
  const MadeForPart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: recents.length,
        itemBuilder: (BuildContext context, int index) {
          return songStructure(context, index, recents);
        },
      ),
    );
  }
}
