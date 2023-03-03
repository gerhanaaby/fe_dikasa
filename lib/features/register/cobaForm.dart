import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/forms.dart';
import 'package:flutter/material.dart';

class cobaForm extends StatefulWidget {
  const cobaForm({super.key});

  @override
  State<cobaForm> createState() => _cobaFormState();
}

class _cobaFormState extends State<cobaForm> {
  int _selectedButtonIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              children: createButtons(
                  ['Button 1', 'Button 2', 'Button 3', 'Button 4'],
                  0,
                  Colors.grey,
                  Colors.green,
                  Colors.black),
            ),
          ),
          Container(
              padding: EdgeInsets.all(50),
              child: dropDownFormField(
                ["Fish", "Elephant", "Duck"],
                "Select an Options",
                300,
                100,
              )),
        ],
      ),
    );
  }
}
