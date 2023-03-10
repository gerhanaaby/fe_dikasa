import 'package:flutter/material.dart';

class RincianPesanan extends StatefulWidget {
  const RincianPesanan({Key? key}) : super(key: key);

  @override
  State<RincianPesanan> createState() => _RincianPesananState();
}

class _RincianPesananState extends State<RincianPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(width: 100,height: 100,),
        Column(
          children: [
            Container(),
            Container(),
            Container(),
          ],
        )
      ],),
    );
  }
}
