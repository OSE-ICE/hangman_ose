import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hangman_ose/widget/headline_text.dart';

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
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Text(
            'Hengimann er leikur þar sem þú átt að giska á orð. '
            'Þú getur valið flokk og þá kemur orð úr þeim flokki. '
            'Þú átt að giska á stafina í orðinu og ef þú giskar rangt þá taparðu lífi. '
            'Þú getur bara giskað á stafina í enskum stafrófi. Þú getur ekki giskað á sama stafinn tvisvar sinnum. '
            'Þú getur bara giskað á stafina í enskum stafrófi. Þú getur ekki giskað á sama stafinn tvisvar sinnum.'
            'byggt á leiknum Hangman sem er búinn til af saumur og er aðgengilegur á GitHub. '
            'Þú getur fundið kóðann á GitHub undir nafninu HangmanOSE. '
            'Þú getur fundið kóðann á GitHub undir nafninu HangmanOSE. '
            'þetta er bara til að fylla út plássið. '
            'til að þurfa að setja scroolview á þetta. '
            'veit ekki hvað ég þarf mikið af texta. '
            'greinilega þarf ég að setja scroolview á þetta. '
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'bldskajfkasjfdlaksdjflkjasdlfkjlsdakfjkhsadfkasdjhkasdjfkasjhfksadj'
            'þetta er kannski nóg.',
            // set the style of the text
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
