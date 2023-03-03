import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/forms.dart';

import 'package:fe_dikasa/constants/headers.dart';
import 'package:fe_dikasa/constants/imageSide.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:fe_dikasa/features/login/login.dart';
import 'package:fe_dikasa/features/otp/otp.dart';
import 'package:fe_dikasa/utils/change_screen.dart';
import 'package:flutter/material.dart';

class registerForm extends StatefulWidget {
  const registerForm({super.key});

  @override
  State<registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<registerForm> {
  Key formKey = GlobalKey<FormState>();
  bool obscureText = true;
  double widthz = 487.0;
  double bottom = 15.0;
  int stage = 1;
  String buttontext = "";

  void nextButton() {
    setState(() {
      stage += 1;
    });
  }

  void prevButton() {
    setState(() {
      stage -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Row(
          children: [
            Expanded(
              flex: 5,
              child: imageLogin(urlz: "assets/images/register_img.png"),
            ),
            //SizedBox(width: size.width * 0.06),
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                          0, 0, 0, 20.0), // set margin here
                      child: imageLogoAuth(),
                    ),
                    headingRegister(
                        textLabel: "BUAT AKUN BARU",
                        paddingBottom: 41.0,
                        labelStyleForm: poppinsDarkGreyBold(fontSize: 18)),
                    headingRegister(
                        textLabel: "Informasi Pemilik (Step ${stage} dari 3)",
                        paddingBottom: 20.0,
                        labelStyleForm: poppinsDarkGreyNormal(
                            fontSize: 15, fontStyle: FontStyle.italic)),
                    Form(
                        key: formKey,
                        child: stage == 2
                            ? Step2()
                            : stage == 3
                                ? Step3()
                                : Column(
                                    children: [
                                      textFormField(
                                        paddingBottom: bottom,
                                        height: 49.0,
                                        width: widthz,
                                        validatorForm: (value) {
                                          if (value!.isEmpty) {
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
                                            return "The Nomor Hp field cannot be empty";
                                          } else if (value.length < 3) {
                                            return "The Nomor Hp has to be at least 3 characters long";
                                          }
                                          return null;
                                        },
                                        prefix: const Icon(
                                            Icons.phone_in_talk_rounded,
                                            color: textFormColorGrey),
                                        textType: TextInputType.phone,
                                        textLabel: "Nomor Hp usaha",
                                        textHint: "Masukan nomor hp usaha",
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
                                        labelStyleForm:
                                            poppinsDarkGreyNormal(fontSize: 12),
                                        focusedColor: textFormColorGrey,
                                        enabledColor: textFormColorGrey,
                                      )
                                    ],
                                  )),
                    elevatedBtnApp(
                        childx: const Text("Selanjutnya"),
                        onPressedx: stage == 3
                            ? () {
                                changeScreenReplacement(context, Otp());
                                print("pindahtop");
                                print(stage);
                              }
                            : () {
                                nextButton();
                              },
                        colorx: darkOrangeAccentColor,
                        widthx: widthz,
                        textColorx: whiteColor),
                    textButtonApp(
                        childx: stage == 2
                            ? Text("Kembali")
                            : stage == 3
                                ? Text("Kembali")
                                : Text("Sudah Memiliki akun"),
                        onPressedx: stage == 1
                            ? () {
                                changeScreenReplacement(context, Login());
                              }
                            : () {
                                prevButton();
                              },
                        textColorx: blueColor),
                  ],
                )),
          ],
        ));
  }

  Widget Step2() {
    return Column(
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
          prefix: const Icon(Icons.person_rounded, color: textFormColorGrey),
          textType: TextInputType.name,
          textLabel: "Nama Pemilik",
          textHint: "Masukan nama pemilik",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
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
          prefix:
              const Icon(Icons.date_range_outlined, color: textFormColorGrey),
          textType: TextInputType.datetime,
          textLabel: "Tanggal Lahir",
          textHint: "Masukan alamat usaha",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
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
          prefix:
              const Icon(Icons.phone_in_talk_rounded, color: textFormColorGrey),
          textType: TextInputType.phone,
          textLabel: "Nomor Hp Pemilik",
          textHint: "Masukan nomor hp pemilik",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
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
          prefix: const Icon(Icons.email_outlined, color: textFormColorGrey),
          textType: TextInputType.emailAddress,
          textLabel: "Email Pemilik [Optional]",
          textHint: "Masukan alamat email",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
          focusedColor: textFormColorGrey,
          enabledColor: textFormColorGrey,
        )
      ],
    );
  }

  Widget Step3() {
    return Column(
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
          prefix: const Icon(Icons.person_rounded, color: textFormColorGrey),
          textType: TextInputType.name,
          textLabel: "Nama Pemilik",
          textHint: "Masukan nama pemilik",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
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
          prefix:
              const Icon(Icons.date_range_outlined, color: textFormColorGrey),
          textType: TextInputType.datetime,
          textLabel: "Tanggal Lahir",
          textHint: "Masukan alamat usaha",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
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
          prefix:
              const Icon(Icons.phone_in_talk_rounded, color: textFormColorGrey),
          textType: TextInputType.phone,
          textLabel: "Nomor Hp Pemilik",
          textHint: "Masukan nomor hp pemilik",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
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
          prefix: const Icon(Icons.email_outlined, color: textFormColorGrey),
          textType: TextInputType.emailAddress,
          textLabel: "Email Pemilik [Optional]",
          textHint: "Masukan alamat email",
          labelStyleForm: poppinsDarkGreyNormal(fontSize: 12),
          focusedColor: textFormColorGrey,
          enabledColor: textFormColorGrey,
        )
      ],
    );
  }
}
