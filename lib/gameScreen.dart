import 'package:hangman_ose/main.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

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
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Til baka'),
        ),
      ),
    );
  }
}
