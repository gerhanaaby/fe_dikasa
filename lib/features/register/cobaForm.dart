import 'package:fe_dikasa/constants/forms.dart';
import 'package:flutter/material.dart';

class cobaForm extends StatefulWidget {
  const cobaForm({super.key});

  @override
  State<cobaForm> createState() => _cobaFormState();
}

class _cobaFormState extends State<cobaForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: dropDownFormField(["Fish", "Elephant", "Duck"], "Select an Options",50,100),
      ),
    );
  }
}
