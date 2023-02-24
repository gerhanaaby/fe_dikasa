import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:flutter/material.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: RotatedBox(
              quarterTurns: 4,
              child: Container(
                color: Colors.red,
                child: Image.asset(
                  "assets/images/register_berhasil.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 243,
                height: 51,
                child: Center(
                  child: Image.asset('assets/images/banner.jpg'),
                ),
              ),
              SizedBox(
                width: 396,
                height: 42,
                child: Text(
                  "Akun Baru Berhasil di Buat !!",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 324.0,
                height: 328.0,
                child: Center(
                  child: Image.asset('assets/images/splash.jpg'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 388.0,
                  height: 60.0,
                  child: Title(
                    color: Colors.grey,
                    child: Text(
                      "Terima Kasih telah memilih Dikasa. Sukses Selalu dan Selamat Bergabung",
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  )),
              elevatedBtnApp(
                  childx: Text("Selesai"),
                  onPressedx: () {},
                  colorx: originalOrangeAccentColor),
            ],
          )),
        ],
      ),
    );
  }
}
