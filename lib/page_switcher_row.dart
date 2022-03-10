import 'package:flutter/material.dart';
import 'package:verbugator/pages/portuguese/portuguese_future_tense_page.dart';
import 'package:verbugator/pages/portuguese/portuguese_present_tense_page.dart';
import 'package:verbugator/pages/spanish/spanish_future_tense_page.dart';
import 'package:verbugator/pages/spanish/spanish_past_tense_page.dart';
import 'package:verbugator/pages/spanish/spanish_present_tense_page.dart';
import 'package:verbugator/pages/french/french_future_tense_page.dart';
import 'package:verbugator/pages/french/french_present_tense_page.dart';

class PageSwitcherRow extends StatefulWidget {
  const PageSwitcherRow({Key? key, this.languageValue, this.tenseValue})
      : super(key: key);

  final String? languageValue;
  final String? tenseValue;

  @override
  State<PageSwitcherRow> createState() => _PageSwitcherRowState();
}

class _PageSwitcherRowState extends State<PageSwitcherRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton<String>(
          value: widget.languageValue,
          onChanged: (String? newValue) {
            setState(() {
              Navigator.of(context).pop(true);
              var languageValue = newValue!;
              switch (newValue) {
                case 'French':
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FrenchPresentTensePage()));
                    break;
                  }
                case 'Portuguese':
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PortuguesePresentTensePage()));
                    break;
                  }
                case 'Spanish':
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SpanishPresentTensePage()));
                    break;
                  }
              }
            });
          },
          items: ['French', 'Portuguese', 'Spanish']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const Padding(padding: EdgeInsets.all(0.25)),
        DropdownButton<String>(
          value: widget.tenseValue,
          onChanged: (String? newValue) {
            setState(() {
              var tenseValue = newValue!;
              Navigator.of(context).pop(true);
              if (widget.languageValue == 'Spanish') {
                switch (newValue) {
                  case 'Past Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SpanishPastTensePage()));
                      break;
                    }

                  case 'Present Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SpanishPresentTensePage()));
                      break;
                    }

                  case 'Future Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SpanishFutureTensePage()));
                      break;
                    }
                }
              }
              if (widget.languageValue == 'French') {
                switch (newValue) {
                  case 'Present Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FrenchPresentTensePage()));
                      break;
                    }

                  case 'Future Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FrenchFutureTensePage()));
                      break;
                    }
                }
              }
              if (widget.languageValue == 'Portuguese') {
                switch (newValue) {
                  case 'Present Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PortuguesePresentTensePage()));
                      break;
                    }

                  case 'Future Tense':
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PortugueseFutureTensePage()));
                      break;
                    }
                }
              }
            });
          },
          items: ['Past Tense', 'Present Tense', 'Future Tense']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
