import 'package:flutter/material.dart';

Widget imageLogin({dynamic height, required String urlz}) {
  return SizedBox(
      height: double.infinity,
      child: Image.asset(
        urlz,
        fit: BoxFit.fill,
      ));
}

Widget imageLogoAuth({dynamic heightx, dynamic widthx}) {
   heightx ?? (heightx = 51.0);
    widthx ?? (widthx = 243.0);
  return SizedBox(
      child: Image.asset(
        "assets/images/dikasa_logo_auth.png",
        height: heightx,
        width: widthx,
        fit: BoxFit.fill,
      ));
}
