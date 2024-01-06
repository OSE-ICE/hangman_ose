import 'package:flutter/material.dart';

Widget letter(String character, bool hidden, bool isSpace) {
  return Container(
    height: 40,
    width: 40,
    padding: const EdgeInsets.fromLTRB(14, 7, 5, 5),
    decoration: BoxDecoration(
      color: isSpace ? Colors.transparent : Colors.indigo.shade400,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Visibility(
      visible: !hidden,
      child: Text(
        character,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
  );
}
