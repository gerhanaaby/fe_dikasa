import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/headers.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/image_side.dart';
import '../login/login.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key});

  @override
  Widget build(BuildContext context) {
    var messageBerhasil = "Akun Baru Berhasil di Buat !!";
    var messageBerhasil2 =
        "Terima Kasih telah memilih Dikasa. \n Sukses Selalu dan Selamat Bergabung";

    double widthz = 487.0;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: imageLogin(urlz: "assets/images/register_success_img.png"),
          ),
          Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(20.0), // set margin here
                    child: imageLogoAuth(),
                  ),
                  headingRegister(
                      textLabel: messageBerhasil,
                      paddingBottom: 20.0,
                      labelStyleForm: poppinsDarkGreyBold(fontSize: 18)),
                  SizedBox(
                    width: 324.0,
                    height: 328.0,
                    child: Center(
                      child: Image.asset('assets/images/splash.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 388,
                    height: 60,
                    child: Text(
                      messageBerhasil2,
                      textAlign: TextAlign.center,
                      style: poppinsDarkGreyBold(fontSize: 20),
                    ),
                  ),
                  elevatedBtnApp(
                      childx: const Text("Selesai"),
                      onPressedx: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      colorx: darkOrangeAccentColor,
                      widthx: widthz,
                      heightx: 53,
                      textColorx: whiteColor),
                ],
              )),
        ],
      ),
    );
  }
}
