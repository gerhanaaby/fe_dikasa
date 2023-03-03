import 'package:fe_dikasa/features/login/login.dart';
import 'package:fe_dikasa/features/otp/otp.dart';

import 'package:fe_dikasa/features/register/cobaForm.dart';
import 'package:fe_dikasa/features/register/registerStep1.dart';
import 'package:fe_dikasa/features/register/registerStep2.dart';
import 'package:fe_dikasa/features/register/registerStep3.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // add these lines
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const registerStep1(),
    );
  }
}
