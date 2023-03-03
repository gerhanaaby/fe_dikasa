import 'package:fe_dikasa/constants/buttons.dart';
import 'package:fe_dikasa/constants/colors.dart';
import 'package:fe_dikasa/constants/forms.dart';
import 'package:fe_dikasa/constants/headers.dart';
import 'package:fe_dikasa/constants/imageSide.dart';
import 'package:fe_dikasa/constants/text_styles.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Key formKey = GlobalKey<FormState>();
  bool obscureText = true;
  double widthz = 300.0;
  double bottom = 15.0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
                    textLabel: "MASUK KE DASHBOARD",
                    paddingBottom: 20.0,
                    labelStyleForm: poppinsDarkGreyBold(fontSize: 18)),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        textFormField(
                          paddingBottom: bottom,
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
                          textLabel: "Username / Email",
                          textHint: "Enter your Username / Email",
                          labelStyleForm: poppinsDarkGreyNormal(fontSize: 16),
                          focusedColor: textFormColorGrey,
                          enabledColor: textFormColorGrey,
                        ),
                        textFormField(
                            paddingBottom: bottom,
                            width: widthz,
                            validatorForm: (value) {
                              if (value!.isEmpty) {
                                return "The password field cannot be empty";
                              } else if (value.length < 8) {
                                return "The password has to be at least 8 characters long";
                              }
                              return null;
                            },
                            obscureText: obscureText,
                            prefix:
                                const Icon(Icons.key, color: textFormColorGrey),
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
                                color: textFormColorGrey,
                              ),
                            ),
                            textType: TextInputType.visiblePassword,
                            textLabel: "Password",
                            textHint: "Enter your Password",
                            labelStyleForm: poppinsDarkGreyNormal(fontSize: 16),
                            focusedColor: textFormColorGrey,
                            enabledColor: textFormColorGrey)
                      ],
                    )),
                elevatedBtnApp(
                    childx: const Text("Login"),
                    onPressedx: () {},
                    colorx: darkOrangeAccentColor,
                    widthx: widthz,
                    textColorx: whiteColor),
                textButtonApp(
                    childx: const Text("Lupa pass?"),
                    onPressedx: () {},
                    textColorx: blueColor),
              ],
            )),
      ],
    ));
  }
}
