import 'package:flutter/material.dart';

Widget letter(String character, bool hidden) {
  return Container(
    height: 50,
    width: 50,
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
    decoration: BoxDecoration(
      color: Colors.indigo.shade400,
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
