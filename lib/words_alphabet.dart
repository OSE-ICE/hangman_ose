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
  "Skóli",
  "Epli",
  "Bíll",
  "Sjór",
  "Hestur",
  "Hundur",
  "Köttur",
  "Taska",
];

String word = words[Random().nextInt(words.length)];

String newWord() {
  return words[Random().nextInt(words.length)];
}

List<String> proverbs = [
  "Sjaldan\n fellur\n eplið\n langt\n frá\n eikini",
  "sjaldan\n er\n ein\n báran\n stök",
  "Glöggt\n er\n gests\n augað",
];

String randomProverb = proverbs[Random().nextInt(proverbs.length)];
