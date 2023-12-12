import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangman_ose/widget/headline_text.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo.shade500,
        title: headlineText("Um Hengimann"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "Hvernig spila ég Hengimann?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const TextSpan(
                  text:
                      '''\nHengimann er leikur þar sem þú átt að giska á orð.  Þú átt að giska á stafina í orðinu og ef þú giskar rangt þá taparðu lífi.   Þú getur ekki giskað á sama stafinn tvisvar sinnum. Þú hefur 7 tilraunir til að giska á orðið.
                      ''',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                const TextSpan(
                  text: "\nLesa nánar um leikinn",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                TextSpan(
                  text: "\nSmelltu hér til að lesa nánar um leikinn(á ensku)\n",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      const url =
                          'https://en.wikipedia.org/wiki/Hangman_(game)';
                      final uri = Uri.parse(url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                ),
                const TextSpan(
                  text: "\nSaga Hengimanns",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const TextSpan(
                  text:
                      '''\nÞað er ekki alveg ljóst hvar leikurinn kom fyrst fram, en hér eru upplýsingar um uppruna hans:\nHugtakið Hangman var mótað af Thomas Schelling í bók hans frá árinu 1960, The Strategy of Conflict. Þetta hugtak hefur öðlast mikinn stuðning innan stjórnmálafræða. Stefnumarkandi leikir breyta stefnu leiksins þannig að hann er í hag leikmannsins.\nLeikurinn í námi barna: Hangman hefur einnig verið mikilvægur leikur í lífi yngri barna. Hann hjálpar þeim við vitsmunaþroska, hreyfiþroska og félagsþroska. Þessir leikir eru frjálsir, könnunarleikir, og þau eru aðal uppspretta þroska barnanna.\nÞannig að Hangman hefur ekki bara skemmt börnum og fullorðnum, heldur hefur hann einnig verið gagnlegur í námi og þroska. 
                      ''',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
