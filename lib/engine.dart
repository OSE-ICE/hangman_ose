import 'dart:io';
import 'dart:math';

class HangmanGame {
  String word;
  List<String> guessedLetters = [];
  int lives = 7;

  HangmanGame(this.word);

  bool isGameOver() {
    return lives == 0 || isWordGuessed();
  }

  bool isWordGuessed() {
    for (int i = 0; i < word.length; i++) {
      if (!guessedLetters.contains(word[i])) {
        return false;
      }
    }
    return true;
  }

  void guessLetter(String letter) {
    if (!guessedLetters.contains(letter)) {
      guessedLetters.add(letter);
      if (!word.contains(letter)) {
        lives--;
      }
    }
  }

  String getWordWithGuesses() {
    String result = "";
    for (int i = 0; i < word.length; i++) {
      if (guessedLetters.contains(word[i])) {
        result += word[i];
      } else {
        result += "_";
      }
      result += " ";
    }
    return result.trim();
  }
}
