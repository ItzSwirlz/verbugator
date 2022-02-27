import 'package:flutter/material.dart';
import 'package:verbugator/page_switcher_row.dart';
import 'package:verbugator/pages/french/french_present_tense_page.dart';
import 'package:verbugator/verb_table.dart';

class FrenchFutureTensePage extends StatefulWidget {
  const FrenchFutureTensePage({Key? key}) : super(key: key);

  @override
  State<FrenchFutureTensePage> createState() => _FrenchFutureTensePageState();
}

class _FrenchFutureTensePageState extends State<FrenchFutureTensePage> {
  String languageValue = 'French';
  String tenseValue = 'Future Tense';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verbugator'),
      ),
      body: ListView(children: [
        PageSwitcherRow(languageValue: languageValue, tenseValue: tenseValue),
        const Text(
            'Any regular verb has the following added to the infinitive:',
            textAlign: TextAlign.center),
        const VerbTable(
            iString: 'Je',
            iConjugation: '-ai',
            youString: 'Tu',
            youConjugation: '-as',
            heSheStrings: <String>['Il', 'Elle', 'On'],
            heSheConjugation: '-a',
            weString: 'Nous',
            weConjugation: '-ons',
            youAllString: 'Vous',
            youAllConjugation: '-ez',
            theyStrings: <String>['Ils', 'Elles'],
            theyConjugation: '-ont'),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
