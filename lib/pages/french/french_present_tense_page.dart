import 'package:flutter/material.dart';
import 'package:verbugator/pages/french/french_future_tense_page.dart';
import 'package:verbugator/verb_table.dart';

import '../../page_switcher_row.dart';

class FrenchPresentTensePage extends StatefulWidget {
  const FrenchPresentTensePage({Key? key}) : super(key: key);

  @override
  State<FrenchPresentTensePage> createState() => _FrenchPresentTensePageState();
}

class _FrenchPresentTensePageState extends State<FrenchPresentTensePage> {
  String languageValue = 'French';
  String tenseValue = 'Present Tense';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verbugator'),
      ),
      body: ListView(children: [
        PageSwitcherRow(languageValue: languageValue, tenseValue: tenseValue),
        const Text('-er verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Je',
            iConjugation: '-e',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['Il', 'Elle', 'On'],
            heSheConjugation: '-e',
            weString: 'Nous',
            weConjugation: '-ons',
            youAllString: 'Vous',
            youAllConjugation: '-ez',
            theyStrings: <String>['Ils', 'Elles'],
            theyConjugation: '-ent'),
        const Text('-ir verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Je',
            iConjugation: '-is',
            youString: 'Tu',
            youConjugation: '-is',
            heSheStrings: <String>['Il', 'Elle', 'On'],
            heSheConjugation: '-it',
            weString: 'Nous',
            weConjugation: '-issons',
            youAllString: 'Vous',
            youAllConjugation: '-issez',
            theyStrings: <String>['Ils', 'Elles'],
            theyConjugation: '-issent'),
        const Text('-re verbs', textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Je',
            iConjugation: '-s',
            youString: 'Tu',
            youConjugation: '-s',
            heSheStrings: <String>['Il', 'Elle', 'On'],
            heSheConjugation: '-',
            weString: 'Nous',
            weConjugation: '-ons',
            youAllString: 'Vous',
            youAllConjugation: '-ez',
            theyStrings: <String>['Ils', 'Elles'],
            theyConjugation: '-ent'),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
