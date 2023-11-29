import 'package:flutter/material.dart';
import 'package:hangman_ose/widget/letter.dart';

class Game {
  static int tries = 0;
  static List<String> selectedCharacter = [];
  static int lives = 7;
  static List<String> checkWinner = [];
}

class ProverbGame {
  static int tries = 0;
  static List<String> selectedCharacter = [];
  static int lives = 10;
  static List<String> checkWinner = [];
}

List<Widget> mapWordsToWidgets(String proverb) {
  List<Widget> widgets = [];
  List<String> words = proverb.split(" ");

  for (String word in words) {
    List<String> characters = word.split("");
    List<Widget> wordWidgets = characters
        .map((e) => letter(
            e.toUpperCase(),
            Game.tries >= 10
                ? false
                : !ProverbGame.selectedCharacter.contains(e.toUpperCase()),
            e == " "))
        .toList();

    widgets.addAll(wordWidgets);

    // Add a space after each word except the last one
    if (word != words.last) {
      widgets.add(letter(" ", false, true));
    }
  }

  return widgets;
}
