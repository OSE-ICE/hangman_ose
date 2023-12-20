import 'package:flutter/material.dart';
import 'package:hangman_ose/widget/headline_text.dart';
import 'package:hangman_ose/widget/main_text.dart';
import 'package:hangman_ose/widget/progress_image.dart';
import 'package:hangman_ose/words_alphabet.dart';
import 'package:hangman_ose/widget/letter.dart';
import 'package:hangman_ose/game.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  GameScreenState createState() => GameScreenState();
}

class GameScreenState extends State<GameScreen> {
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
            Center(
              child: Stack(
                children: [
                  progressImage(Game.tries >= 0, "assets/img/progress_0.png"),
                  progressImage(Game.tries >= 1, "assets/img/progress_1.png"),
                  progressImage(Game.tries >= 2, "assets/img/progress_2.png"),
                  progressImage(Game.tries >= 3, "assets/img/progress_3.png"),
                  progressImage(Game.tries >= 4, "assets/img/progress_4.png"),
                  progressImage(Game.tries >= 5, "assets/img/progress_5.png"),
                  progressImage(Game.tries >= 6, "assets/img/progress_6.png"),
                  progressImage(Game.tries >= 7, "assets/img/progress_7.png"),
                  progressImage(Game.tries >= 8, "assets/img/victory.png"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: word
                  .split("")
                  .map((e) => letter(
                      e.toUpperCase(),
                      Game.tries >= 7
                          ? false
                          : !Game.selectedCharacter.contains(e.toUpperCase()),
                      e == " "))
                  .toList(),
            ),
            mainText("Tilraunir eftir: ${Game.lives - Game.tries}"),
            SizedBox(
              width: double.infinity,
              height: 300.0,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                padding: const EdgeInsets.all(8.0),
                children: alphabet.map((e) {
                  return RawMaterialButton(
                    onPressed:
                        Game.tries < 7 && !Game.selectedCharacter.contains(e)
                            ? () {
                                setState(() {
                                  Game.selectedCharacter.add(e);
                                  if (word
                                      .toUpperCase()
                                      .split("")
                                      .contains(e.toUpperCase())) {
                                    Game.checkWinner.add(e);
                                  }
                                  if (!word
                                      .toUpperCase()
                                      .split("")
                                      .contains(e.toUpperCase())) {
                                    Game.tries++;
                                  }
                                  if (Set.from(word.toUpperCase().split(""))
                                      .difference(Game.checkWinner.toSet())
                                      .isEmpty) {
                                    Game.tries = 8;
                                    Game.lives = 8;
                                  }
                                });
                              }
                            : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    fillColor: Game.selectedCharacter.contains(e)
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
              visible: Game.tries >= 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Game.selectedCharacter = [];
                      Game.checkWinner = [];
                      Game.tries = 0;
                      Game.lives = 7;
                      word = newWord();
                    });
                  },
                  child: mainText("Spila aftur"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
