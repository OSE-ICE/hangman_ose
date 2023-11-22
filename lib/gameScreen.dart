import 'package:hangman_ose/main.dart';
import 'package:flutter/material.dart';
import 'package:hangman_ose/widget/progress_image.dart';
import 'package:hangman_ose/words_alphabet.dart';
import 'package:hangman_ose/widget/letter.dart';
import 'dart:math';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade500,
        title: const Center(
            widthFactor: 2.5,
            child: Text(
              'Hangman',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: word
                  .split("")
                  .map((e) => letter(e.toUpperCase(),
                      !Game.selectedCharacter.contains(e.toUpperCase())))
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Tilraunir eftir: ${Game.tries - 7}",
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 350.0,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                padding: const EdgeInsets.all(8.0),
                children: alphabet.map((e) {
                  return RawMaterialButton(
                    onPressed: Game.selectedCharacter.contains(e)
                        ? null
                        : () {
                            setState(() {
                              Game.selectedCharacter.add(e);
                              print(Game.selectedCharacter);
                              print(word.toUpperCase().split(""));
                              if (!word.split("").contains(e.toUpperCase())) {
                                Game.tries++;
                              }
                            });
                          },
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Game.selectedCharacter = [];
                    Game.tries = 0;
                    word = newWord();
                  });
                },
                child: const Text(
                  'Spila aftur',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
