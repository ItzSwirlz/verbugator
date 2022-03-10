import 'package:flutter/material.dart';
import 'package:verbugator/page_switcher_row.dart';
import 'package:verbugator/verb_table.dart';

class SpanishPastTensePage extends StatefulWidget {
  const SpanishPastTensePage({Key? key}) : super(key: key);

  @override
  State<SpanishPastTensePage> createState() => _SpanishPastTensePageState();
}

class _SpanishPastTensePageState extends State<SpanishPastTensePage> {
  String languageValue = 'Spanish';
  String tenseValue = 'Past Tense';

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
                TextSpan(
                    text: 'NOTE: This is currently just the preterite.',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        const Text('-ar verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Yo',
            iConjugation: '-é',
            youString: 'Tu',
            youConjugation: '-aste',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-ó',
            weString: 'Nosotros/as',
            weConjugation: '-amos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-asteis',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-aron'),
        const Text('-er/-ir verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Yo',
            iConjugation: '-í',
            youString: 'Tu',
            youConjugation: '-iste',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-ió',
            weString: 'Nosotros/as',
            weConjugation: '-imos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-isteis',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-ieron'),
      ]),
    );
  }
}
