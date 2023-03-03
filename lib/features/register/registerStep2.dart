import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/imageside.dart';
import 'package:fe_dikasa/constants/forms.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:fe_dikasa/constants/headers.dart';

class registerStep2 extends StatefulWidget {
  const registerStep2({super.key});

  @override
  State<registerStep2> createState() => _registerStep2State();
}

class _registerStep2State extends State<registerStep2> {
  Key formKey = GlobalKey<FormState>();
  bool obscureText = true;
  double widthz = 260.0;
  double bottom = 15.0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Row(
          children: [
            Expanded(
              flex: 6,
              child: imageLogin(urlz: "assets/images/register_img.png"),
            ),
            //SizedBox(width: size.width * 0.06),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20.0), // set margin here
                      child: imageLogoAuth(),
                    ),
                    headingRegister(
                        textLabel: "BUAT AKUN BARU",
                        paddingBottom: 20.0,
                        labelStyleForm: poppinsDarkGreyBold(fontSize: 18)),
                    headingRegister(
                        textLabel: "Informasi Pemilik (Step 2 dari 3)",
                        paddingBottom: 20.0,
                        labelStyleForm: poppinsDarkGreyNormal(
                            fontSize: 15, fontStyle: FontStyle.italic)),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            textFormField(
                              paddingBottom: bottom,
                              width: widthz,
                              validatorForm: (value) {
                                if (value!.isEmpty) {
                                  return "The Nama Pemilik field cannot be empty";
                                } else if (value.length < 3) {
                                  return "The Nama Pemilik has to be at least 3 characters long";
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.person_rounded,
                                  color: textFormColorGrey),
                              textType: TextInputType.name,
                              textLabel: "Nama Pemilik",
                              textHint: "Masukan nama pemilik",
                              labelStyleForm:
                                  poppinsDarkGreyNormal(fontSize: 12),
                              focusedColor: textFormColorGrey,
                              enabledColor: textFormColorGrey,
                            ),
                            textFormField(
                              paddingBottom: bottom,
                              width: widthz,
                              validatorForm: (value) {
                                if (value!.isEmpty) {
                                  return "The Tanggal Lahir field cannot be empty";
                                } else if (value.length < 3) {
                                  return "The Tanggal Lahir has to be at least 3 characters long";
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.date_range_outlined,
                                  color: textFormColorGrey),
                              textType: TextInputType.datetime,
                              textLabel: "Tanggal Lahir",
                              textHint: "Masukan alamat usaha",
                              labelStyleForm:
                                  poppinsDarkGreyNormal(fontSize: 12),
                              focusedColor: textFormColorGrey,
                              enabledColor: textFormColorGrey,
                            ),
                            textFormField(
                              paddingBottom: 20.0,
                              width: widthz,
                              validatorForm: (value) {
                                if (value!.isEmpty) {
                                  return "The Hp Pemilik field cannot be empty";
                                } else if (value.length < 3) {
                                  return "The Hp Pemilik has to be at least 3 characters long";
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.phone_in_talk_rounded,
                                  color: textFormColorGrey),
                              textType: TextInputType.phone,
                              textLabel: "Nomor Hp Pemilik",
                              textHint: "Masukan nomor hp pemilik",
                              labelStyleForm:
                                  poppinsDarkGreyNormal(fontSize: 12),
                              focusedColor: textFormColorGrey,
                              enabledColor: textFormColorGrey,
                            ),
                            textFormField(
                              paddingBottom: bottom,
                              width: widthz,
                              validatorForm: (value) {
                                if (value!.isEmpty) {
                                  return "The Email Usaha field cannot be empty";
                                } else if (value.length < 3) {
                                  return "The Email Usaha has to be at least 3 characters long";
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.email_outlined,
                                  color: textFormColorGrey),
                              textType: TextInputType.emailAddress,
                              textLabel: "Email Pemilik [Optional]",
                              textHint: "Masukan alamat email",
                              labelStyleForm:
                                  poppinsDarkGreyNormal(fontSize: 12),
                              focusedColor: textFormColorGrey,
                              enabledColor: textFormColorGrey,
                            )
                          ],
                        )),
                    elevatedBtnApp(
                        childx: Text("Selanjutnya"),
                        onPressedx: () {},
                        colorx: darkOrangeAccentColor,
                        widthx: 260,
                        textColorx: whiteColor),
                    textButtonApp(
                        childx: Text("Kembali"),
                        onPressedx: () {},
                        textColorx: blueColor),
                  ],
                )),
          ],
        ));
  }
}
