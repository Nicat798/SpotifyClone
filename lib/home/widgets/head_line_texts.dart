import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadLineTexts extends StatelessWidget {
  const HeadLineTexts({super.key, required this.currentText});
  final String currentText;

  @override
  Widget build(BuildContext context) {
    return Text(
      currentText,
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontWeight: FontWeight.w800,
        fontSize: 25.0,
      ),
    );
  }
}
