
import 'package:flutter/material.dart';
Widget headingRegister(
    {String? textLabel,
      String? textHint,
      double? height,
      double? width,
      double? paddingBottom,
      double? fontSize,
      String? fontType,
      TextStyle? labelStyleForm}) {
  textLabel ?? (textLabel = "Enter Title");
  paddingBottom ?? (paddingBottom= 51.0);

  return SizedBox(
      width: width,
      height: height,
      child: Padding(
          padding: EdgeInsets.only(bottom: paddingBottom),
          child: Text(
            textLabel,
            style: labelStyleForm,
          )));
}
