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
  "Betra er geymt en gleymt",
  "sjaldan er ein báran stök",
  "Glöggt er gests augað",
  "Græddur er geymdur eyrir",
  "Fyrr má nú rota en dauðrota",
  "Fokið er í flest skjól",
];

String randomProverb = proverbs[Random().nextInt(proverbs.length)];

String newProverb() {
  return proverbs[Random().nextInt(proverbs.length)];
}
