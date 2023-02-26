//@dart=2.9
import 'package:flutter/material.dart';

Widget textFormField(
    {String textLabel,
    String textHint,
    double height,
    TextEditingController controller,
    String Function(String) validatorForm,
    Widget prefix,
    Widget suffix,
    TextStyle labelStyleForm,
    TextInputType textType,
    Color focusedColor,
    Color enabledColor,
    bool obscureText}) {
  textLabel ?? (textLabel = "Enter Title");
  textHint ?? (textHint = "Enter Hint");
  height ?? (height = 50.0);
  textType ?? TextInputType.text;
  obscureText == null ? obscureText = true : false;
  //height !=null

  return Padding(
    padding: const EdgeInsets.only(left: 0, right: 0),
    child: TextFormField(
      obscureText: obscureText,
      validator: validatorForm,
      controller: controller,
      keyboardType: textType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: textLabel,
        labelStyle: labelStyleForm,
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(
            color: focusedColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: enabledColor,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}

Widget headingRegister(
    {String textLabel,
    String textHint,
    double height,
    double width,
    double fontsize,
    String fonttype,
    TextStyle labelStyleForm}) {
  return SizedBox(
      width: width,
      height: height,
      child: Text(
        textLabel,
        style: TextStyle(fontSize: fontsize, fontFamily: fonttype),
      ));
}

Widget subHeading(
    {String textLabel,
    String textHint,
    double height,
    TextEditingController controller,
    String Function(String) validatorForm,
    Widget prefix,
    Widget suffix,
    TextStyle labelStyleForm,
    TextInputType textType}) {
  return Padding(
    padding: const EdgeInsets.only(left: 70.0, right: 70.0, bottom: 20.0),
    child: TextFormField(
      validator: validatorForm,
      controller: controller,
      keyboardType: textType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: textLabel,
        labelStyle: labelStyleForm,
        hintText: textHint,
      ),
    ),
  );
}

Widget textRegisterField(
    {String textLabel,
    String textHint,
    double height,
    TextEditingController controller,
    String Function(String) validatorForm,
    Widget prefix,
    Widget suffix,
    TextStyle labelStyleForm,
    TextInputType textType,
    Color focusedColor,
    Color enabledColor,
    Color columnBackgroundColor,
    Color backgroundColor,
    bool obscureText}) {
  textLabel ?? (textLabel = "Enter Title");
  textHint ?? (textHint = "Enter Hint");
  height ?? (height = 50.0);
  textType ?? TextInputType.text;
  obscureText == null ? obscureText = true : false;
  //height !=null

  return Padding(
    padding: const EdgeInsets.only(left: 70.0, right: 70.0, bottom: 20.0),
    child: TextFormField(
      obscureText: obscureText,
      validator: validatorForm,
      controller: controller,
      keyboardType: textType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: textLabel,
        labelStyle: labelStyleForm,
        hintText: textHint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0),
          borderSide: BorderSide(
            color: focusedColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: enabledColor,
            width: 2.0,
          ),
        ),
      ),
    ),
  );
}
