import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mainText(String text) {
  return Text(
    text,
    style: GoogleFonts.indieFlower(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
  );
}
