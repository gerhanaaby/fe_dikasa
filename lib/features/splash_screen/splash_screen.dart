import 'package:fe_dikasa/features/login/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new Login(),
      imageBackground: AssetImage("assets/images/splash.jpg"),
      loaderColor: Colors.white,
    );
  }
}
