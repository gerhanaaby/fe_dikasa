import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/list.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:fe_dikasa/features/dashboard/slide_able_list.dart';
import 'package:flutter/material.dart';

class RincianPesanan extends StatefulWidget {
  const RincianPesanan({Key? key}) : super(key: key);

  @override
  State<RincianPesanan> createState() => _RincianPesananState();
}

class _RincianPesananState extends State<RincianPesanan> {
  final listOrder = const [
    {'qty': 1, 'name': 'Cumi Goreng Asam Manis', 'price': 20000},
    {'qty': 20, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 2, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
    {'qty': 100, 'name': 'Cumi Goreng Asam Manis', 'price': 21000},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                width: 446,
                height: 88,
                color: blueBgHeaderPembayaranStage1,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      height: 88,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [
                            Icon(Icons.arrow_back,size: 40,color: whiteColor,),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 100, 0),
                      child: Text(
                        'Rincian Pesanan',
                        style: poppinsWhiteBold(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 446,
                height: 287,
                child: Container(
                  child: SlideAbleList(
                    listOrder: listOrder,
                  ),
                ),
              ),
              Container(
                width: 446,
                height: 236,
                child: Column(
                  children: [
                    listTotalPrice(
                        42,
                        451,
                        'Total Harga',
                        '200.000',
                        greyBgListTotalPesanan,
                        poppinsDarkGreyBold(fontSize: 16),
                        poppinsDarkGreyBold(fontSize: 16)),
                    listTotalPrice(
                        42,
                        451,
                        'Total Harga',
                        '200.000',
                        greyBgListTotalPesanan,
                        poppinsDarkGreyBold(fontSize: 16),
                        poppinsDarkGreyBold(fontSize: 16)),
                    listTotalPrice(
                        42,
                        451,
                        'Total Harga',
                        'Rp. 200.000',
                        greyBgListTotalPesanan,
                        poppinsDarkGreyBold(fontSize: 20),
                        poppinsGreenBold(fontSize: 20)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
