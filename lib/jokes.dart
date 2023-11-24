import 'dart:math';

List<String> jokes = [
  "Hvað gera köngulærnar þegar þeim leiðist? \n --Hanga á netinu...",
  "Hvað borða vegan vampírur? \n --Blóðappelsínur",
  "Hvernig veiðir maður saltfisk? \n --Auðvitað á saltstöng...",
  "Ég keypti mér nýtt boomerang um daginn og ætlaði að losa mig við það gamla, en það tókst bara ekki.. \n --Það kom alltaf til baka...",
  "Hvað verður um ís sem er búinn að vera lengi í boxi? \n --Hann kemst á endanum í form...",
  "Gerviblómin mín dóu af því að ég gleymdi að þykjast vökva þau...",
  "Amma hóf að ganga 10 kílómetra á dag þegar hún varð sextug.\n --Í dag höfum við ekki hugmynd um hvar hún er...",
];

String randomJokes = jokes[Random().nextInt(jokes.length)];
