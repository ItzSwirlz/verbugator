import 'package:flutter/material.dart';
import 'package:verbugator/verb_table.dart';

import '../../page_switcher_row.dart';

class PortuguesePresentTensePage extends StatefulWidget {
  const PortuguesePresentTensePage({Key? key}) : super(key: key);

  @override
  State<PortuguesePresentTensePage> createState() =>
      _PortuguesePresentTensePageState();
}

class _PortuguesePresentTensePageState
    extends State<PortuguesePresentTensePage> {
  String languageValue = 'Portuguese';
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
            iString: 'Eu',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-as',
            heSheStrings: <String>['Ele', 'Ela', 'Você'],
            heSheConjugation: '-a',
            weString: 'Nós',
            weConjugation: '-amos',
            youAllString: 'Vós',
            youAllConjugation: '-ais',
            theyStrings: <String>['Eles', 'Elas', 'Vocês'],
            theyConjugation: '-am'),
        const Text('-er verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Eu',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['Ele', 'Ela', 'Você'],
            heSheConjugation: '-e',
            weString: 'Nós',
            weConjugation: '-emos',
            youAllString: 'Vós',
            youAllConjugation: '-eis',
            theyStrings: <String>['Eles', 'Elas', 'Vocês'],
            theyConjugation: '-em'),
        const Text('-ir verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Eu',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['Ele', 'Ela', 'Você'],
            heSheConjugation: '-e',
            weString: 'Nós',
            weConjugation: '-imos',
            youAllString: 'Vós',
            youAllConjugation: '-is',
            theyStrings: <String>['Eles', 'Elas', 'Vocês'],
            theyConjugation: '-em'),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
