import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hangman_ose/gameScreen.dart';
import 'package:hangman_ose/jokes.dart';
import 'package:hangman_ose/about_screen.dart';
import 'package:hangman_ose/proverbs.dart';
import 'package:hangman_ose/widget/headline_text.dart';
import 'package:hangman_ose/widget/main_text.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    const MaterialApp(
      title: 'Hangman',
      home: WelcomeScreen(),
    ),
  );
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo.shade500,
        title: Center(
          widthFactor: 1.5,
          child: headlineText("Hengimann"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo.shade500,
              ),
              child: headlineText("Hengimann"),
            ),
            ListTile(
              leading: const Icon(Icons.article_rounded),
              title: const Text('Um Hengimann'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.games),
              title: const Text('Giskaðu á málsháttinn'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProverbScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/img/welcome_img.png",
              height: 500,
            ),
            SizedBox(
              width: 380,
              child: Center(
                child: mainText(randomJokes),
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              child: mainText("Spila leik"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
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
