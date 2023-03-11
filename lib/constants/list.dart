import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

Widget listTotalPrice(
  double? height,
  double? width,
  String text1,
  String text2,
  Color bgColor,
  TextStyle textStyle1,
  TextStyle textStylePrice,
) {
  return Container(
    width: width,
    height: height,
    color: bgColor,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(31, 0, 0, 0),
          child: Text(
            text1,
            style: textStyle1,
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
          child: Text(
            text2,
            style: textStylePrice,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    ),
  );
}
