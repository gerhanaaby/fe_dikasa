import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_form.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class registerOne extends StatefulWidget {
  const registerOne({super.key});

  @override
  State<registerOne> createState() => _registerOneState();
}

class _registerOneState extends State<registerOne> {
  Key formKey = GlobalKey<FormState>();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Row(
        children: [
        Expanded(
          flex: 4,
          child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                child: Image.asset(
                'https://img.freepik.com/free-photo/asian-man-barista-holding-tablet-checking-order-from-customer-coffee-cafe_1150-8047.jpg?w=1380&t=st=1677393368~exp=1677393968~hmac=fdf9ebe481c0f59fe6540600fc0f208df93f9bc9227a1169f669d339ad06ef2a',
                fit: BoxFit.cover,
              )
              )),
        ),
        //SizedBox(width: size.width * 0.06),
        Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                subHeading(
                      textLabel: "Informasi Usaha ( Step 1 )"
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
                              color: grey_formField),
                          textType: TextInputType.name,
                          textLabel: "Nama Usaha",
                          textHint: "Masukan nama usaha",
                          labelStyleForm: whiteto,
                          focusedColor: grey_formField,
                          enabledColor: grey_formField,
                        ),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The Username field cannot be empty";
                            } else if (value.length < 3) {
                              return "The Username has to be at least 3 characters long";
                            }
                            return null;
                          },
                          prefix: const Icon(Icons.date_range_outlined,
                              color: grey_formField),
                          textType: TextInputType.name,
                          textLabel: "Alamat Usaha",
                          textHint: "Masukan alamat usaha",
                          labelStyleForm: whiteto,
                          focusedColor: grey_formField,
                          enabledColor: grey_formField,
                          columnBackgroundColor: grey_formField
                        ),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The Username field cannot be empty";
                            } else if (value.length < 3) {
                              return "The Username has to be at least 3 characters long";
                            }
                            return null;
                          },
                          prefix: const Icon(Icons.phone_in_talk_rounded,
                              color: grey_formField),
                          textType: TextInputType.phone,
                          textLabel: "Nomor Hp usaha",
                          textHint: "Masukan nomor hp usaha",
                          labelStyleForm: whiteto,
                          focusedColor: grey_formField,
                          enabledColor: grey_formField,
                        ),
                        textRegisterField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The Username field cannot be empty";
                            } else if (value.length < 3) {
                              return "The Username has to be at least 3 characters long";
                            }
                            return null;
                          },
                          prefix: const Icon(Icons.email_outlined,
                              color: grey_formField),
                          textType: TextInputType.emailAddress,
                          textLabel: "Email Usaha [Optional]",
                          textHint: "Masukan alamat email",
                          labelStyleForm: whiteto,
                          focusedColor: grey_formField,
                          enabledColor: grey_formField,
                        )
                      ],
                    )),
                elevatedBtnApp(
                    childx: Text("Selanjutnya"),
                    onPressedx: () {},
                    colorx: darkOrangeAccentColor,
                    textColorx: white_main),
                textButtonApp(
                    childx: Text("Kembali"),
                    onPressedx: () {},
                    textColorx: blue_btnMain),
              ],
            )),
      ],
    ));
  }
}
