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
  "Bíll",
  "Sjór",
  "Hestur",
  "Hundur",
  "Köttur",
  "Hús",
  "Bíll",
  "Sjór",
  "Hestur",
  "Hundur",
  "Vegur",
  "Forrit",
  "Tölva",
  "lyklar",
  "mús",
  "Stóll",
  "Kjóll",
  "Borð",
  "Kind",
  "Vesti",
  "Veski",
  "Taska",
  "Hnöttur",
  "Hnífur",
  "Skór",
  "Buxur",
  "Húfa",
];

//create a string with a ramdom word from the list words
String word = words[Random().nextInt(words.length)];

//create a function that gets a new random word from the list words
String newWord() {
  return words[Random().nextInt(words.length)];
}
