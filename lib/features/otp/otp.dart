import 'package:flutter/material.dart';
import 'package:fe_dikasa/constants/otp_form.dart';

import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Row(
        
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              height: double.infinity,
              // quarterTurns: 4,
              child: Container(
                color: Colors.red,
                child: const Image(
                  image: AssetImage("assets/images/register_img.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 217.0,
                  height: 42.0,
                  child: Text(
                    "Buat Akun Baru",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                const SizedBox(
                  width: 302.0,
                  height: 33.0,
                  child: Text(
                    "Silahkan Masukan Kode OTP",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 110,
                  child: otpFormField(
                    numberOfFields: 5,
                    borderColor: Color(0xEDEDED),
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
                const SizedBox(
                  width: 475.0,
                  height: 148.0,
                  child: Text(
                    "Kode OTP Telah kami kirimkan ke email yang anda pilih untuk melakukan verifikasi. Silakan check inbox email.",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 487.0,
                  height: 53.0,
                  child: elevatedBtnApp(
                    onPressedx: () {},
                    childx: Text("Selanjutnya"),
                    textColorx: Colors.white,
                    colorx: orange_btnMain,
                  ),
                ),
                SizedBox(
                  width: 105.0,
                  height: 27.0,
                  child: TextButton(
                    child: Text('Kirim Ulang'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
