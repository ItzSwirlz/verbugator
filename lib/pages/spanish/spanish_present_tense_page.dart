import 'package:flutter/material.dart';
import 'package:verbugator/verb_table.dart';

import '../../page_switcher_row.dart';

class SpanishPresentTensePage extends StatefulWidget {
  const SpanishPresentTensePage({Key? key}) : super(key: key);

  @override
  State<SpanishPresentTensePage> createState() =>
      _SpanishPresentTensePageState();
}

class _SpanishPresentTensePageState extends State<SpanishPresentTensePage> {
  String languageValue = 'Spanish';
  String tenseValue = 'Present Tense';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verbugator'),
      ),
      body: ListView(children: [
        PageSwitcherRow(languageValue: languageValue, tenseValue: tenseValue),
        const Center(
          child: Text.rich(
            TextSpan(
              style: TextStyle(fontSize: 25),
              children: <TextSpan>[
                TextSpan(
                    text: 'NOTE: This is speaking in an indicative mood.',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        const Text('-ar verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Yo',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-as',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-a',
            weString: 'Nosotros/as',
            weConjugation: '-amos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-áis',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-an'),
        const Text('-er verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Yo',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-e',
            weString: 'Nosotros/as',
            weConjugation: '-emos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-éis',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-en'),
        const Text('-ir verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Yo',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-e',
            weString: 'Nosotros/as',
            weConjugation: '-imos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-ís',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-en'),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
