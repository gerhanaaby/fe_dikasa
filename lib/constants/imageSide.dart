import 'package:flutter/material.dart';

Widget imageLogin({dynamic height, required String urlz}) {
  return SizedBox(
      height: double.infinity,
      child: Image.asset(
        urlz,
        fit: BoxFit.fill,
      ));
}
