import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangman_ose/widget/letter.dart';
import 'package:hangman_ose/words_alphabet.dart';

class ProverbScreen extends StatefulWidget {
  const ProverbScreen({Key? key}) : super(key: key);

  @override
  _ProverbScreenState createState() => _ProverbScreenState();
}

class _ProverbScreenState extends State<ProverbScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade500,
        title: Center(
            widthFactor: 1.5,
            child: Text(
              'Hengimann',
              style: GoogleFonts.caveat(fontSize: 50, color: Colors.white),
            )),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Giskaðu á málsháttinn...",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 350,
              child: GridView.count(
                crossAxisCount: 8,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                padding: const EdgeInsets.all(8),
                children: randomProverb
                    .split("")
                    .map((proverb) => letter(proverb.toUpperCase(), false))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
