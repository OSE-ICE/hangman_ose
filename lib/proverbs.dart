import 'package:flutter/material.dart';
import 'package:hangman_ose/game.dart';
import 'package:hangman_ose/widget/headline_text.dart';
import 'package:hangman_ose/widget/main_text.dart';
import 'package:hangman_ose/words_alphabet.dart';

class ProverbScreen extends StatefulWidget {
  const ProverbScreen({Key? key}) : super(key: key);

  @override
  ProverbScreenState createState() => ProverbScreenState();
}

class ProverbScreenState extends State<ProverbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade500,
        title: Center(
          widthFactor: 1.5,
          child: headlineText("Hengimann"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: mainText("Giskaðu á málsháttinn"),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: SizedBox(
                width: double.infinity,
                height: 240,
                child: Wrap(
                  spacing: 2,
                  runSpacing: 2,
                  children: mapWordsToWidgets(randomProverb),
                ),
              ),
            ),
            mainText(
                "Tilraunir eftir: ${ProverbGame.lives - ProverbGame.tries}"),
            SizedBox(
              width: double.infinity,
              height: 240,
              child: GridView.count(
                crossAxisCount: 8,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                padding: const EdgeInsets.all(8.0),
                children: alphabet.map((e) {
                  return RawMaterialButton(
                    onPressed: ProverbGame.tries < 10 &&
                            !ProverbGame.selectedCharacter.contains(e)
                        ? () {
                            setState(() {
                              ProverbGame.selectedCharacter.add(e);

                              if (randomProverb
                                  .toUpperCase()
                                  .split("")
                                  .contains(e.toUpperCase())) {
                                ProverbGame.checkWinner.add(e);
                              }
                              if (!randomProverb
                                  .toUpperCase()
                                  .split("")
                                  .contains(e.toUpperCase())) {
                                ProverbGame.tries++;
                              }
                              if (Set.from(randomProverb
                                      .toUpperCase()
                                      .replaceAll(" ", "")
                                      .split(""))
                                  .difference(ProverbGame.checkWinner.toSet())
                                  .isEmpty) {
                                ProverbGame.tries = 10;
                                ProverbGame.lives = 10;
                              }
                            });
                          }
                        : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    fillColor: ProverbGame.selectedCharacter.contains(e)
                        ? Colors.grey
                        : Colors.indigo.shade500,
                    child: Text(
                      e,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Visibility(
              visible: ProverbGame.tries >= 10,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      ProverbGame.selectedCharacter = [];
                      ProverbGame.checkWinner = [];
                      ProverbGame.tries = 0;
                      ProverbGame.lives = 10;
                      randomProverb = newProverb();
                    });
                  },
                  child: mainText("Reyna aftur"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
