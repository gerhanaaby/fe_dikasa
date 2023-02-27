import 'dart:async';

import 'package:fe_dikasa/utils/change_screen.dart';
import 'package:flutter/material.dart';
import '../register/register_berhasil.dart';



class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const betterPrice = 'better price';
    var betterExp = 'better experience';
    var betterApp = "better app";
    double fontSize = 30;

    Timer(const Duration(seconds: 3), () {
      changeScreenReplacement(context, const RegisterSuccess());
    });

    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // The splash screen
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/loading.gif",
                width: 400,
                height: 300,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 179,
                      height: 142,
                    ),
                    Image.asset(
                      'assets/images/banner.jpg',
                      width: 400,
                      height: 200,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 42,
                      child: Text(
                        betterPrice,
                        style: TextStyle(fontSize: fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 42,
                      child: Text(
                        betterApp,
                        style: TextStyle(fontSize: fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 42,
                      child: Text(
                        betterExp,
                        style: TextStyle(fontSize: fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
