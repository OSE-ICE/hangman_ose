import 'package:flutter/material.dart';
import 'package:hangman_ose/gameScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangman_ose/jokes.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Hangman',
      home: FirstRoute(),
    ),
  );
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade500,
        title: Center(
          child: Text(
            'Hengimann',
            style: GoogleFonts.caveat(fontSize: 50, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/img/welcome_img.jpg",
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 380,
              child: Center(
                child: Text(
                  randomJokes,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              child: Text(
                'Spila leik',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
