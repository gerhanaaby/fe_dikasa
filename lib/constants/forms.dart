import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Widget textFormField({
  String? textLabel,
  String? textHint,
  double? height,
  double? width,
  TextEditingController? controller,
  String? Function(String?)? validatorForm,
  Widget? prefix,
  Widget? suffix,
  TextStyle? labelStyleForm,
  TextInputType? textType,
  required Color focusedColor,
  required Color enabledColor,
  bool? obscureText,
  required double paddingBottom, // add this parameter
}) {
  textLabel ?? (textLabel = "Enter Title");
  textHint ?? (textHint = "Enter Hint");
  height ?? (height = 50.0);
  textType ?? TextInputType.text;
  obscureText == null ? obscureText = true : false;
  //height !=null

  return Padding(
    padding: EdgeInsets.only(bottom: paddingBottom),
    child: SizedBox(
      width: width,
      height: height,
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
    ),
  );
}

Widget otpFormField({
  numberOfFields,
  required Color borderColor,
  fontSize,
  radiusOfFields,
  marginOfFields,
  double? width,
  double? height,
  //set to true to show as box or false to show as dash
  required bool showFieldAsBox,
  required onSubmit,
}) {
  fontSize ?? (fontSize = 70.0);
  radiusOfFields ?? (radiusOfFields = 15.0);
  marginOfFields ?? (marginOfFields = 20.0);

  return SizedBox(
    width: width,
    height: height,
    child: OtpTextField(
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

Widget dropDownFormField(
    List<String> dropDownValue, String labelText, double width, double height) {
  return SizedBox(
    width: width,
    height: height,
    child: DropdownButtonFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey[700],
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      items: dropDownValue.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {},
    ),
  );
}
