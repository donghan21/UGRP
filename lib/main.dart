import 'package:flutter/material.dart';
import 'login.dart';
import 'package:ugrp/signPage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';
import 'seventhPage.dart';
import 'fourthPage.dart';
import 'fifthPage.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/sign': (context) => SignPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/lunge': (context) => LungeExplain(),
        '/side' : (context) => SidePlankExplain(),
        '/squat': (context) => SquatExplain(),
        '/fifth': (context) => FifthPage(),
        //'/sixth': (context) => SixthPage(),
        '/seventh': (context) => SeventhPage(),
      },
    );
  }
}