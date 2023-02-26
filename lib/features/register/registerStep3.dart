import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_form.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class registerStep3 extends StatefulWidget {
  const registerStep3({super.key});

  @override
  State<registerStep3> createState() => _registerStep3State();
}

class _registerStep3State extends State<registerStep3> {
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
                  textLabel: "Informasi Pemilik (Step 3 dari 3)",
                  labelStyleForm: pepehead2,
                ),
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
                            textLabel: "Username",
                            textHint: "Masukan Username",
                            labelStyleForm: whiteto,
                            focusedColor: textFormColorGrey,
                            enabledColor: textFormColorGrey,
                            backgroundColor: bgTextFromGrey),
                        textRegisterField(
                            validatorForm: (value) {
                              if (value.isEmpty) {
                                return "The Password field cannot be empty";
                              } else if (value.length < 3) {
                                return "The Password has to be at least 3 characters long";
                              }
                              return null;
                            },
                            prefix: const Icon(Icons.password_outlined,
                                color: textFormColorGrey),
                            textType: TextInputType.visiblePassword,
                            textLabel: "Password",
                            textHint: "Masukan Password",
                            labelStyleForm: whiteto,
                            focusedColor: textFormColorGrey,
                            enabledColor: textFormColorGrey,
                            columnBackgroundColor: bgTextFromGrey),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The Konfirmasi Password field cannot be empty";
                            } else if (value.length < 3) {
                              return "The Konfirmasi Password has to be at least 3 characters long";
                            }
                            return null;
                          },
                          prefix: const Icon(Icons.password_rounded,
                              color: textFormColorGrey),
                          textType: TextInputType.visiblePassword,
                          textLabel: "Konfirmasi Password",
                          textHint: "Masukan konfirmasi password",
                          labelStyleForm: whiteto,
                          focusedColor: textFormColorGrey,
                          enabledColor: textFormColorGrey,
                        ),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The email field cannot be empty";
                            } else if (value.length < 3) {
                              return "The email has to be at least 3 characters long";
                            }
                            return null;
                          },
                          prefix: const Icon(Icons.email_outlined,
                              color: textFormColorGrey),
                          textType: TextInputType.multiline,
                          textLabel: "Email Verifikasi",
                          textHint: "Masukan email",
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
