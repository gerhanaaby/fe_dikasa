import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_form.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class registerStep1 extends StatefulWidget {
  const registerStep1({super.key});

  @override
  State<registerStep1> createState() => _registerStep1State();
}

class _registerStep1State extends State<registerStep1> {
  Key formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Row(
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                  height: double.infinity,
                  child: Image.asset(
                    'assets/images/register_img.png',
                    fit: BoxFit.fill,
                  )),
            ),
            //SizedBox(width: size.width * 0.06),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    headingRegister(
                        textLabel: "BUAT AKUN BARU", labelStyleForm: pepehead1),
                    headingRegister(
                        textLabel: "Informasi Pemilik (Step 1 dari 3)",
                        labelStyleForm: pepehead2),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            textRegisterField(
                                validatorForm: (value) {
                                  if (value.isEmpty) {
                                    return "The Username field cannot be empty";
                                  } else if (value.length < 3) {
                                    return "The Username has to be at least 3 characters long";
                                  }
                                  return null;
                                },
                                prefix: const Icon(Icons.person_rounded,
                                    color: textFormColorGrey),
                                textType: TextInputType.name,
                                textLabel: "Nama Usaha",
                                textHint: "Masukan nama usaha",
                                labelStyleForm: whiteto,
                                focusedColor: textFormColorGrey,
                                enabledColor: textFormColorGrey,
                                backgroundColor: blueColor),
                            textRegisterField(
                                validatorForm: (value) {
                                  if (value.isEmpty) {
                                    return "The Alamat field cannot be empty";
                                  } else if (value.length < 3) {
                                    return "The Alamat has to be at least 3 characters long";
                                  }
                                  return null;
                                },
                                prefix: const Icon(Icons.map_outlined,
                                    color: textFormColorGrey),
                                textType: TextInputType.name,
                                textLabel: "Alamat Usaha",
                                textHint: "Masukan alamat usaha",
                                labelStyleForm: whiteto,
                                focusedColor: textFormColorGrey,
                                enabledColor: textFormColorGrey,
                                columnBackgroundColor: bgTextFromGrey),
                            textRegisterField(
                              validatorForm: (value) {
                                if (value.isEmpty) {
                                  return "The Nomor Hp field cannot be empty";
                                } else if (value.length < 3) {
                                  return "The Nomor Hp has to be at least 3 characters long";
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.phone_in_talk_rounded,
                                  color: textFormColorGrey),
                              textType: TextInputType.phone,
                              textLabel: "Nomor Hp usaha",
                              textHint: "Masukan nomor hp usaha",
                              labelStyleForm: whiteto,
                              focusedColor: textFormColorGrey,
                              enabledColor: textFormColorGrey,
                            ),
                            textRegisterField(
                              validatorForm: (value) {
                                if (value.isEmpty) {
                                  return "The Email field cannot be empty";
                                } else if (value.length < 3) {
                                  return "The Email has to be at least 3 characters long";
                                }
                                return null;
                              },
                              prefix: const Icon(Icons.email_outlined,
                                  color: textFormColorGrey),
                              textType: TextInputType.emailAddress,
                              textLabel: "Email Usaha [Optional]",
                              textHint: "Masukan alamat email",
                              labelStyleForm: whiteto,
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
                        childx: Text("Sudah Memiliki akun"),
                        onPressedx: () {},
                        textColorx: blueColor),
                  ],
                )),
          ],
        ));
  }
}
