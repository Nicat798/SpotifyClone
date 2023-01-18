// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImagePart extends StatelessWidget {
  const ImagePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              spreadRadius: 10,
              blurRadius: 70,
            ),
          ],
          image: DecorationImage(
            image: AssetImage("assets/images/sagopa.jpeg"),
          ),
        ),
        width: 250.0,
        height: 250.0,
      ),
    );
  }
}
