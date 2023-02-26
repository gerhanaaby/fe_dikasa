import 'package:fe_dikasa/features/register/register_berhasil.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key});

  @override
  Widget build(BuildContext context) {
    const betterPrice = 'better price';
    var betterExp = 'better experience';
    var data = "better app";
    double fontSize = 30;

    return Scaffold(
      body: SizedBox(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // The splash screen
            SplashScreen(
              seconds: 3,
              navigateAfterSeconds: RegisterSuccess(),
              loaderColor: Colors.white,
            ),
            // The logo image and text
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 264,
                      height: 42,
                      child: Text(
                        betterPrice,
                        style: TextStyle(fontSize: fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 42,
                      child: Text(
                        betterExp,
                        style: TextStyle(fontSize: fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 175,
                      height: 42,
                      child: Text(
                        data,
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
