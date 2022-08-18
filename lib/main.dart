import 'package:flutter/material.dart';
import 'login.dart';
import 'package:ugrp/signPage.dart';
import 'secondPage.dart';
import 'thirdPage.dart';
import 'seventhPage.dart';
import 'fourthPage.dart';
import 'fifthPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(392.7, 737.4), //숫자 뒤에 .w, .h, .sp 를 쓰면 designSize 기준 가로, 세로, 폰트 크기가 된다.
      builder: (_, child) => MaterialApp(
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
      ),
    );
  }
}

