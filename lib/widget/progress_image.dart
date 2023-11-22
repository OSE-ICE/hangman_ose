import 'package:flutter/cupertino.dart';

Widget progressImage(bool visible, String path) {
  return Visibility(
    visible: visible,
    child: Container(
      width: 250,
      height: 250,
      child: Image.asset(path),
    ),
  );
}

Widget victoryImage(String path) {
  return Visibility(
    child: Container(
      width: 250,
      height: 250,
      child: Image.asset(path),
    ),
  );
}

class Game {
  static int tries = 0;
  static List<String> selectedCharacter = [];
}
