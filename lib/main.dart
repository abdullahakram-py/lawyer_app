import 'package:flutter/material.dart';
import 'package:lawyer_app/helpcenter.dart';
import 'package:lawyer_app/history.dart';
import 'package:lawyer_app/home.dart';
import 'package:lawyer_app/onboarding.dart';
import 'package:lawyer_app/profilescreen.dart';
import 'package:lawyer_app/qrscreen.dart';
import 'package:lawyer_app/signup.dart';
import 'package:lawyer_app/splashscreen.dart';
import 'package:lawyer_app/topup.dart';
import 'package:lawyer_app/topup2.dart';
import 'package:lawyer_app/verifyaccount.dart';
import 'package:lawyer_app/yoursaving.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Home(),
    );
  }
}


