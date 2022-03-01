import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:verbugator/page_switcher_row.dart';
import 'package:verbugator/verb_table.dart';

class SpanishFutureTensePage extends StatefulWidget {
  const SpanishFutureTensePage({Key? key}) : super(key: key);

  @override
  State<SpanishFutureTensePage> createState() => _SpanishFutureTensePageState();
}

class _SpanishFutureTensePageState extends State<SpanishFutureTensePage> {
  String languageValue = 'Spanish';
  String tenseValue = 'Future Tense';

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
        const Text(
            'Any regular verb has the following added to the infinitive:',
            textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Yo',
            iConjugation: '-é',
            youString: 'Tu',
            youConjugation: '-ás',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-á',
            weString: 'Nosotros/as',
            weConjugation: '-emos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-éis',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-án'),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
