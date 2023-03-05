import 'package:fe_dikasa/constants/button.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            SizedBox(
                child: buttonGroup(267, 46, 16, Colors.blue, Colors.white,
                    Colors.white, Colors.grey, ["oke", "mantap", "bos"])),
            Container(
                padding: EdgeInsets.all(50),
                child: dropDownFormField(dropDownValue: ["ewe", "ewe", "ewe"]))
          ],
        ),
      ),
    );
  }
}
