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

//--- POPPINS ---

//WHITE
poppinsWhiteMedium( //Orange Button Text
        {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: whiteMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsWhiteSemibold(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: whiteMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsWhiteBold(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: whiteMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}



//SOFT_GREY
poppinsSoftGreyMedium( //Place Holder
        {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: greyPlaceHolder,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

//GREY
poppinsGreyNormal(
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

poppinsGreyMedium( //Login & Register Header
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: greyHeaderLogin,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

//DARK_GREY (726F6F)
poppinsDarkGreyNormal(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.normal,
      color: greyProductName,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsDarkGreyMedium(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: greyTextMainH1,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsDarkGreySemibold(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: greyProductName,
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
      color: greyProductName,
      fontStyle: fontStyle,
      decoration: textDecoration);
}


//BLUE
poppinsBlueMedium(
        {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: blueTextColorMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

//RED
poppinsRedMedium(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: redBtnMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsRedSemibold(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: redBtnMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

//GREEN
poppinsGreenMedium(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
      color: greenTextColorMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsGreenSemibold(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      color: greenTextColorMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}

poppinsGreenBold(
    {required double fontSize,
      FontStyle? fontStyle,
      TextDecoration? textDecoration}) {
  return TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: greenTextColorMain,
      fontStyle: fontStyle,
      decoration: textDecoration);
}
