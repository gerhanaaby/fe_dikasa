import 'package:fe_dikasa/features/dashboard/menu_list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> myList = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
    'assets/banner4.jpg',
    'assets/banner5.jpg',
  ];
  final List<String> names = ['ichigo', 'niigo', 'sango', 'yongo', 'hakko'];
  final List<String> phones = [
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
        Column(
            children: [
              Container(width: 50, height: 50,child: Text("ini group button dan search"),color: Colors.black,),
              MenuList(images: myList,
                title: names,
                phones: phones,)
            ]),
        Column(
          children: [
            Container()
          ],
        )
      ],
    );
  }
}
