import 'package:flutter/material.dart';
import 'package:ugrp/login.dart';
import 'package:flutter/services.dart';
import 'package:ugrp/seventhPage.dart';
import 'sixthPage.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int lasttime = 0;
  int lastkcal = 0;

  @override
  Widget build(BuildContext context) {

    final String id = ModalRoute.of(context)!.settings.arguments.toString();
    //final inforlast = ModalRoute.of(context)!.settings.arguments as Information;
    lasttime += information.mytime!;
    lastkcal += information.mykcal!;

    return Scaffold(
        body: Container(
            child: Column(children: <Widget>[
      Padding(padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0)),
      Row(children: <Widget>[
        SizedBox(
            width: 70,
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded, size: 33),
                onPressed: (() {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext ctx) {
                        return AlertDialog(
                            content: Text('로그아웃 하시겠습니까?'),
                            actions: [
                              FlatButton(
                                child: Text('예'),
                                onPressed: () {
                                  Navigator.of(ctx).pushReplacementNamed('/');
                                },
                              ),
                              FlatButton(
                                  child: Text('아니오'),
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  }),
                            ]);
                      });
                }))),
        SizedBox(width: 250),
        SizedBox(
          child: IconButton(
              icon: Icon(Icons.exit_to_app, size: 35),
              onPressed: (() {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext ctx) {
                      return AlertDialog(
                          content: Text('앱을 종료하시겠습니까?'),
                          actions: [
                            FlatButton(
                              child: Text('예'),
                              onPressed: () {
                                SystemChannels.platform
                                    .invokeMethod('SystemNavigator.pop');
                              },
                            ),
                            FlatButton(
                                child: Text('아니오'),
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                }),
                          ]);
                    });
              })),
        )
      ]),
      Padding(padding: EdgeInsets.only(top: 20.0)),
      SizedBox(
          width: 300,
          height: 40,
          child: Text('오늘 나의 운동량',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w200))),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: 150,
            height: 30,
            child: Center(
                child: Text(
              '$lasttime' + '분',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
            color: Colors.grey),
        Container(
            width: 150,
            height: 30,
            child: Center(
                child: Text(
              '$lastkcal' + 'kcal',
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
            color: Colors.grey)
      ]),
      SizedBox(height: 50),
      SizedBox(
        height: 50, width: 300,
        child: Text('이번달 나의 운동량', style: TextStyle(fontSize: 23)
        )),
      SizedBox(height: 300, width: 300, child: Center(child: Text('달력')),),
      SizedBox(height: 50),
      SizedBox(width: 300, child: ElevatedButton(child: Text('운동 시작하기'), onPressed: () {Navigator.of(context).pushNamed('/third');},))
    ])));
  }
}

