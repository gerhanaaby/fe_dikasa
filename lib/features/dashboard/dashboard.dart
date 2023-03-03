import 'package:fe_dikasa/features/dashboard/menu_list.dart';
import 'package:fe_dikasa/features/dashboard/slide_able_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> listImage = [
    'assets/images/register_img.png',
    'assets/images/register_img.png',
    'assets/images/register_img.png',
    'assets/images/register_img.png',
    'assets/images/register_img.png',
  ];
  final List<String> menus = ['ichigo', 'niigo', 'sango', 'yongo', 'hakko'];
  final List<String> prices = [
    '(021)678392',
    '(021)678334',
    '(021)672414',
    '(021)678390',
    '(021)679992'
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Column(
              children: [
                Container(width: 50, height: 50, child: Text("ini group button dan search"),color: Colors.black,),
                SizedBox(
                  width: 800,
                  height: 50,
                  child: MenuList(
                    images: listImage,
                    menus: menus,
                    prices: prices,),
                )
              ]),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Container(width: 50, height: 50, child: Text("ini group button dan order"),color: Colors.black,),
              SizedBox(
                width: 500,
                  height: 150,
                  child: SlideAbleList()),
            ],
          ),
        )
      ],
    );
  }
}
