import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Widget otpFormField({
  numberOfFields,
  required Color borderColor,
  fontSize,
  radiusOfFields,
  marginOfFields,

  //set to true to show as box or false to show as dash
  required bool showFieldAsBox,
  required onSubmit,
}){
  fontSize ?? (fontSize = 70.0);
  radiusOfFields ?? (radiusOfFields = 15.0);
  marginOfFields ?? (marginOfFields = 20.0);

  return SizedBox(
    child: 
    OtpTextField(
      fieldWidth: 77.0,
      numberOfFields: numberOfFields,
      borderColor: borderColor,
      showFieldAsBox: showFieldAsBox,
      textStyle: TextStyle(fontSize: fontSize),
      borderRadius: BorderRadius.all(Radius.circular(radiusOfFields)),
      margin: EdgeInsets.only(right: marginOfFields),
      onSubmit: onSubmit,
    ),
  );
}
