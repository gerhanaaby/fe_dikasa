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
    color: greyBgListTotalPesanan,
    child: Row(
      children: [
        Column(
          children: [
            Container(
              width: 180,
              height: 24,
              margin: EdgeInsets.fromLTRB(37, 10, 110, 0),
              child: Text(text1, style: poppinsDarkGreyBold(fontSize: 16),),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 8, 44, 10),
              child: Text(text2, style: poppinsDarkGreyBold(fontSize: 16), textAlign: TextAlign.right,),
            ),
          ],
        ),
      ],
    ),
  );
}
