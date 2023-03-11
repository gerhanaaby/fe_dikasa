import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/forms.dart';
import 'package:fe_dikasa/constants/list.dart';
import 'package:fe_dikasa/features/dashboard/menu_list.dart';
import 'package:fe_dikasa/features/dashboard/slide_able_list.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final listMenu = const [
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/logo.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 2.000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/dikasa_logo_auth.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/logo.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 2.000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/dikasa_logo_auth.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/dikasa_logo_auth.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
    {
      'image': 'assets/images/register_img.png',
      'name': 'Cumi Goreng Asam Manis',
      'price': 21000
    },
  ];
  final listOrder = const [
    {'qty': 1, 'name': 'Cumi Goreng Asam Manis', 'price': 20000},
    {'qty': 20, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 2, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
  ];

  final labels = const ["Makanan", "Minuman", "Tambahan"];
  final labels2 = const ["OrderBaru", "Daftar Order"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(children: [
            Container(
              color: textFormColorDarkGrey,
              width: 889,
              height: 161,
              child: Column(
                children: [
                  Container(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(43, 0, 43, 0),
                      child: buttonGroup(267, 46, 20, blueColor, whiteColor,
                          bgTextFromGrey, textFormColorGrey, labels),
                    ),
                  ),
                  Container(
                    child: dropDownFormField(dropDownValue: labels),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 889,
              height: 478,
              child: MenuList(
                listMenu: listMenu,
              ),
            )
          ]),
        ),
        SizedBox(
          child: Column(
            children: [
              Container(
                width: 451,
                height: 161,
                color: textFormColorGrey,
                child: Container(
                  margin: EdgeInsets.fromLTRB(31, 0, 31, 0),
                  child: buttonGroup(194, 46, 20, blueColor, whiteColor,
                      bgTextFromGrey, textFormColorGrey, labels2),
                ),
              ),
              SizedBox(
                width: 451,
                height: 237,
                child: SlideAbleList(
                  listOrder: listOrder,
                ),
              ),
              listTotalPrice(42, 451, 'Total Pesanan', '69 Produk'),
              listTotalPrice(42, 451, 'Total Harga', '200.000'),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: outlinedBtnApp(
                          childx: const Text("Hapus"),
                          onPressedx: () {},
                          // colorx: originalOrangeAccentColor,
                          widthx: 186,
                          heightx: 57,
                          textColorx: Colors.red),
                    ),
                    SizedBox(
                      child: elevatedBtnApp(
                          childx: const Text("Simpan"),
                          onPressedx: () {},
                          colorx: blueColor,
                          widthx: 186,
                          heightx: 57,
                          textColorx: whiteColor),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: elevatedBtnApp(
                    childx: const Text("Selanjutnya"),
                    onPressedx: () {},
                    colorx: originalOrangeAccentColor,
                    widthx: 387,
                    heightx: 57,
                    textColorx: whiteColor),
              ),
            ],
          ),
        )
      ],
    );
  }
}
