//@dart=2.9
import 'package:fe_dikasa/constants/button.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/text_form.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                color: Colors.red,
              )),
        ),
        //SizedBox(width: size.width * 0.06),
        Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("data"),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        textFormField(
                          validatorForm: (value) {
                            if (value.isEmpty) {
                              return "The Username field cannot be empty";
                            } else if (value.length < 3) {
                              return "The Username has to be at least 3 characters long";
                            }
                            return null;
                          },
                          prefix: const Icon(Icons.person_rounded,
                              color: darkOrangeAccentColor),
                          textType: TextInputType.name,
                          textLabel: "Username / Email",
                          textHint: "Enter your Username / Email",
                          labelStyleForm: robotoCondensedDarkOrange,
                          focusedColor: darkOrangeAccentColor,
                          enabledColor: darkOrangeAccentColor,
                        ),
                        textFormField(
                            validatorForm: (value) {
                              if (value.isEmpty) {
                                return "The password field cannot be empty";
                              } else if (value.length < 8) {
                                return "The password has to be at least 8 characters long";
                              }
                              return null;
                            },
                            obscureText: obscureText,
                            prefix: const Icon(Icons.key,
                                color: darkOrangeAccentColor),
                            suffix: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              child: Icon(
                                obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: darkOrangeAccentColor,
                              ),
                            ),
                            textType: TextInputType.visiblePassword,
                            textLabel: "Password",
                            textHint: "Enter your Password",
                            labelStyleForm: robotoCondensedDarkOrange,
                            focusedColor: darkOrangeAccentColor,
                            enabledColor: darkOrangeAccentColor)
                      ],
                    )),
                elevatedBtnApp(
                    childx: Text("login"),
                    onPressedx: () {},
                    colorx: originalOrangeAccentColor),
              ],
            )),
      ],
    ));
  }
}
