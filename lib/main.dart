import 'package:flutter/material.dart';
import 'package:hangman_ose/gameScreen.dart';

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
        title: const Center(
          child: Text(
            'Hangman',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/welcome_img.jpg",
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              child: const Text('Spila leik'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
