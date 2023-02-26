import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_form.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class registerStep2 extends StatefulWidget {
  const registerStep2({super.key});

  @override
  State<registerStep2> createState() => _registerStep2State();
}

class _registerStep2State extends State<registerStep2> {
  Key formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
                    textLabel: "Buat Akun Baru",
                    fontsize: 20,
                    fonttype: 'Poppins'),
                subHeading(
                  textLabel: "Informasi Pemilik (Step 2 dari 3)",
                  labelStyleForm: pepehead2,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        textRegisterField(
                            validatorForm: (value) {
                              if (value.isEmpty) {
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
                            labelStyleForm: whiteto,
                            focusedColor: textFormColorGrey,
                            enabledColor: textFormColorGrey,
                            backgroundColor: bgTextFromGrey),
                        textRegisterField(
                            validatorForm: (value) {
                              if (value.isEmpty) {
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
                            labelStyleForm: whiteto,
                            focusedColor: textFormColorGrey,
                            enabledColor: textFormColorGrey,
                            columnBackgroundColor: bgTextFromGrey),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
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
                          labelStyleForm: whiteto,
                          focusedColor: textFormColorGrey,
                          enabledColor: textFormColorGrey,
                        ),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The Email Usaha field cannot be empty";
                            } else if (value.length < 3) {
                              return "The Email Usaha has to be at least 3 characters long";
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
                    childx: Text("Kembali"),
                    onPressedx: () {},
                    textColorx: blueColor),
              ],
            )),
      ],
    ));
  }
}
