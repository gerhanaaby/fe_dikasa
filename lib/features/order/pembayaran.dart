import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({Key? key}) : super(key: key);

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(color: Colors.red,),
      Container(color: Colors.green,),
      Container(color: Colors.blueAccent,)
    ],);
  }
}
