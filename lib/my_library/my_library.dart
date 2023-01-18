// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:spotify_clone/my_library/widgets/head_bar_area.dart';
import 'package:spotify_clone/my_library/widgets/head_buttons.dart';

import '../singer_songs_page/sources/songs_sources.dart';

class MyLibrary extends StatelessWidget {
  const MyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadArea(),
                    SizedBox(
                      height: 15.0,
                    ),
                    HeadButtons(),
                  ],
                ),
              ),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.compare_arrows_rounded,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Most Recent",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.qr_code),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: singersSongs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        singersSongs[index]["imageLink"]!,
                      ),
                      subtitle: Text(singersSongs[index]["singerName"]!),
                      title: Text(singersSongs[index]["songName"]!),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
