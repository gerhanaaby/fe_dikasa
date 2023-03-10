import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

Widget listTotalPrice(
  double? height,
  double? width,
  String text1,
  String text2,
) {
  return Container(
    width: width,
    height: height,
    color: textFormColorGrey,
    child: Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(37, 10, 0, 8),
              child: Text(text1, style: poppinsGreyNormal(fontSize: 16),),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(162, 8, 44, 10),
              child: Text(text2, style: poppinsGreyNormal(fontSize: 16),),
            ),
          ],
        ),
      ],
    ),
  );
}
