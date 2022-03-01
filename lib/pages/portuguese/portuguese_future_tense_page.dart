import 'package:flutter/material.dart';
import 'package:verbugator/page_switcher_row.dart';
import 'package:verbugator/verb_table.dart';

class PortugueseFutureTensePage extends StatefulWidget {
  const PortugueseFutureTensePage({Key? key}) : super(key: key);

  @override
  State<PortugueseFutureTensePage> createState() =>
      _PortugueseFutureTensePageState();
}

class _PortugueseFutureTensePageState extends State<PortugueseFutureTensePage> {
  String languageValue = 'Portuguese';
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
            iString: 'Eu',
            iConjugation: '-ei',
            youString: 'Tu',
            youConjugation: '-ás',
            heSheStrings: <String>['Ele', 'Ela', 'Você'],
            heSheConjugation: '-á',
            weString: 'Nos',
            weConjugation: '-emos',
            youAllString: 'Vós',
            youAllConjugation: '-eis',
            theyStrings: <String>['Eles', 'Elas', 'Vocês'],
            theyConjugation: '-ão'),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
