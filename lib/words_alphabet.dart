import 'dart:math';

List<String> alphabet = [
  "A",
  "Á",
  "B",
  "D",
  "Ð",
  "E",
  "É",
  "F",
  "G",
  "H",
  "I",
  "Í",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "Ó",
  "P",
  "R",
  "S",
  "T",
  "U",
  "Ú",
  "V",
  "X",
  "Y",
  "Ý",
  "Þ",
  "Æ",
  "Ö",
];

List<String> words = [
  "Hús",
  "Belti",
];

//create a string with a random word from the list words
String word = words[Random().nextInt(words.length)];

//create a function that gets a new random word from the list words
String newWord() {
  return words[Random().nextInt(words.length)];
}
