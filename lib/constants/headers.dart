import 'package:flutter/material.dart';

Widget headingRegister(
    {String? textLabel,
    String? textHint,
    double? height,
    double? width,
    double? fontSize,
    String? fontType,
    TextStyle? labelStyleForm}) {
  textLabel ?? (textLabel = "Enter Title");
  return SizedBox(
      width: width,
      height: height,
      child: Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Text(
            textLabel,
            style: labelStyleForm,
          )));
}
