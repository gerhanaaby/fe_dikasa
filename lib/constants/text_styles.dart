import 'package:fe_dikasa/constants/colors.dart';
import 'package:flutter/material.dart';

robotoCondensedDarkOrangeNormal(
    {required double fontSize,
    FontStyle? fontStyle,
    TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Roboto Condensed',
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: darkOrangeAccentColor,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

robotoCondensedDarkOrangeBold(
    {required double fontSize,
    FontStyle? fontStyle,
    TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Roboto Condensed',
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: darkOrangeAccentColor,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsDarkGreyNormal(
    {required double fontSize,
    FontStyle? fontStyle,
    TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: textFormColorGrey,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsDarkGreyBold(
    {required double fontSize,
    FontStyle? fontStyle,
    TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: textFormColorGrey,
      fontStyle: fontStyle,
      decoration: textDecoration);
}
