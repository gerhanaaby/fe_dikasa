import 'package:fe_dikasa/constants/imageSide.dart';
import 'package:flutter/material.dart';

import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:fe_dikasa/constants/headers.dart';

import 'package:fe_dikasa/constants/forms.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: SizedBox(
              height: double.infinity,
              child: Container(
                child: imageLogin(urlz: "assets/images/register_img.png"),
              ),
            ),
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
                    textLabel: "BUAT AKUN BARU", labelStyleForm: pepehead1),
                headingRegister(
                    paddingBottom: 29.0,
                    textLabel: "Silahkan Masukan Kode OTP",
                    labelStyleForm: pepehead2),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 38.0), // set margin here
                  child: SizedBox(
                    height: 110,
                    child: otpFormField(
                      numberOfFields: 5,
                      borderColor: greyFormField,
                      marginOfFields: 20.0,
                      fontSize: 70.0,
                      radiusOfFields: 15.0,
                      showFieldAsBox: true,
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      },
                    ),
                  ),
                ),
                headingRegister(
                    width: 475.0,
                    height: 148.0,
                    paddingBottom: 25.0,
                    textLabel:
                        "Kode OTP Telah kami kirimkan ke email yang anda pilih untuk melakukan verifikasi. Silakan check inbox email.",
                    labelStyleForm: pepehead3),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 12.0), // set margin here
                  child: elevatedBtnApp(
                      childx: const Text("Selanjutnya"),
                      onPressedx: () {},
                      colorx: darkOrangeAccentColor,
                      widthx: 487.0,
                      heightx: 53.0,
                      textColorx: whiteColor),
                ),
                textButtonApp(
                    childx: const Text("Kirim Ulang"),
                    onPressedx: () {},
                    textColorx: blueColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
