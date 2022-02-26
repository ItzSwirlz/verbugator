import 'package:flutter/material.dart';

class VerbTable extends StatelessWidget {
  const VerbTable({
    Key? key,
    required this.iString,
    required this.iConjugation,
    required this.youString,
    required this.youConjugation,
    required this.heSheStrings,
    required this.heSheConjugation,
    required this.weString,
    required this.weConjugation,
    required this.youAllString,
    required this.youAllConjugation,
    required this.theyStrings,
    required this.theyConjugation,
  }) : super(key: key);

  /// The *String is going to be the subject of the sentence.
  /// For example, in Spanish, iString would be 'Yo'.
  ///
  /// The *Conjugation is the change made to the verb that applies with
  /// the subject to make sense.
  ///
  /// [heSheStrings] and [theyStrings] have an extra clause that they should
  /// most of the time have several subjects that they apply with and not just
  /// one. For example, 'El, Ella' and 'Ellos, Ellas'.
  final String iString;
  final String iConjugation;
  final String youString;
  final String youConjugation;
  final List<String> heSheStrings;
  final String heSheConjugation;
  final String weString;
  final String weConjugation;
  final String youAllString;
  final String youAllConjugation;
  final List<String> theyStrings;
  final String theyConjugation;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            Container(
              width: 42,
              height: 42,
              child: Text(iString),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(iConjugation),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(weString),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(weConjugation),
            )
          ],
        ),
        TableRow(
          children: [
            Container(
              width: 42,
              height: 42,
              child: Text(youString),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(youConjugation),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(youAllString),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(youAllConjugation),
            )
          ],
        ),
        TableRow(
          children: [
            Container(
              width: 42,
              height: 42,
              child: Text(heSheStrings.toString()),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(heSheConjugation),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(theyStrings.toString()),
            ),
            Container(
              width: 42,
              height: 42,
              child: Text(theyConjugation),
            )
          ],
        ),
      ],
    );
  }
}
