import 'package:flutter/material.dart';
import 'package:verbugator/verb_table.dart';

class SpanishPage extends StatefulWidget {
  const SpanishPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SpanishPage> createState() => _SpanishPageState();
}

class _SpanishPageState extends State<SpanishPage> {
  String languageValue = 'Spanish';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: [
        DropdownButton<String>(
          value: languageValue,
          onChanged: (String? newValue) {
            setState(() {
              languageValue = newValue!;
            });
          },
          items: ['Spanish']
              .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
          }).toList(),
        ),
        Text('-ar verbs', textAlign: TextAlign.center),
        VerbTable(
            iString: 'Yo',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-as',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-a',
            weString: 'Nosotros/as',
            weConjugation: '-amos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-ais',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-an'
        ),
        Text('-er verbs', textAlign: TextAlign.center),
        VerbTable(
            iString: 'Yo',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-e',
            weString: 'Nosotros/as',
            weConjugation: '-emos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-eis',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-en'
        ),
        Text('-ir verbs', textAlign: TextAlign.center),
        VerbTable(
            iString: 'Yo',
            iConjugation: '-o',
            youString: 'Tu',
            youConjugation: '-es',
            heSheStrings: <String>['El', 'Ella', 'Usted'],
            heSheConjugation: '-e',
            weString: 'Nosotros/as',
            weConjugation: '-imos',
            youAllString: 'Vosotros/as',
            youAllConjugation: '-is',
            theyStrings: <String>['Ellos', 'Ellas', 'Ustedes'],
            theyConjugation: '-en'
        ),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
