import 'package:fe_dikasa/constants/buttons.dart';
import 'package:flutter/material.dart';

Widget Calculator({
  userInput,
  answer,
  setState,
}) {
  final List<String> buttons = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'C',
    '0',
    ' ',
  ];
  return SizedBox(
    width: 300,
    height: 800,
    child: Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  // Clear Button
                  // Equal_to Button
                  if (index == 9) {
                    return ButtonCalculator(
                      buttontapped: () {
                        setState(() {
                          userInput = '';
                          answer = '0';
                        });
                      },
                      buttonText: buttons[index],
                      textColor: Colors.black,
                    );
                  }
                  //  other buttons
                  else {
                    return ButtonCalculator(
                      buttontapped: () {
                        setState(() {
                          userInput += buttons[index];
                        });
                      },
                      buttonText: buttons[index],
                      textColor: Colors.black,
                    );
                  }
                }), // GridView.builder
          ),
        ),
      ],
    ),
  );
}
