import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<Map<String, Object>> listMenu;

  const MenuList({Key? key, required this.listMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount: 3,
      childAspectRatio: (247 / 115),
      padding: EdgeInsets.fromLTRB(0, 32, 25, 0),
      children: List.generate(listMenu.length, (index) {
        return Container(
          margin: EdgeInsets.fromLTRB(14.5, 0, 14.5, 14),
          height: 115,
          width: 247,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 10.0,
            child: Row(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        child: Image.asset(
                          listMenu[index]['image'] as String,
                          fit: BoxFit.fill,
                          height: 115,
                          width: 100,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(14, 0, 0, 25),
                      height: 50,
                      width: 112,
                      child: Text(
                        listMenu[index]['name'] as String,
                        style: poppinsDarkGreyBold(fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(14, 0, 0, 0),
                      height: 20,
                      width: 112,
                      child: Text(
                        'Rp. ${listMenu[index]['price']}',
                        style: poppinsDarkGreyBold(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
