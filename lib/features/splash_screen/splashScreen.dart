import 'dart:async';

import 'package:fe_dikasa/constants/headers.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../utils/change_screen.dart';
import '../register/registerBerhasil.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const betterPrice = 'better price   •   ';
    var betterExp = 'better experience  •    ';
    var betterApp = "better app   •   ";
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/dikasa_logo_auth.png',
                      width: 1300,
                      height: 220,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    headingRegister(
                        textLabel: betterPrice,
                        paddingBottom: 20.0,
                        labelStyleForm: poppinsDarkGreyBold(fontSize: 30)),
                    headingRegister(
                        textLabel: betterExp,
                        paddingBottom: 20.0,
                        labelStyleForm: poppinsDarkGreyBold(fontSize: 30)),
                    headingRegister(
                        textLabel: betterApp,
                        paddingBottom: 20.0,
                        labelStyleForm: poppinsDarkGreyBold(fontSize: 30)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
