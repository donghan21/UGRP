import 'package:flutter/material.dart';

class SixthPage extends StatefulWidget{

  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Information information = new Information(mytime: 1, mykcal: 3);
// 데이터 받아오고  나머지는 꾸미는 거 남음.
class Information {
  int? mytime;
  int? mykcal;
  Information({this.mytime, this.mykcal});
}