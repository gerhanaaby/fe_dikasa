import 'package:fe_dikasa/constants/buttons.dart';
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
  ];
  final listOrder = const [
    {'qty': 1, 'name': 'Cumi Goreng Asam Manis', 'price': 2.000},
    {'qty': 20, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 2, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(children: [
            Container(
              width: 889,
              height: 161,
              color: Colors.yellow,
              child: Text("ini group button dan search"),
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
                color: Colors.green,
                child: const Text("ini group button dan order"),
              ),
              SizedBox(
                width: 451,
                height: 237,
                child: SlideAbleList(
                  listOrder: listOrder,
                ),
              ),
              SizedBox(
                width: 451,
                height: 42,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(37, 0, 0, 0),
                          child: Text('Total Pesanan'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(145, 0, 0, 0),
                          child: Text('data1 deh'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 451,
                height: 42,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(37, 0, 0, 0),
                          child: Text('Total Harga'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(162, 0, 0, 0),
                          child: Text('data2 deh'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 24),
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
