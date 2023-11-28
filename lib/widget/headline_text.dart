import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget headlineText(String text) {
  return Text(
    text,
    style: GoogleFonts.caveat(
      fontSize: 50,
      color: Colors.white,
    ),
  );
}
