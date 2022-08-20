import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ugrp/login.dart';
import 'package:flutter/services.dart';
import 'package:ugrp/seventhPage.dart';
import 'sixthPage.dart';
import 'main.dart';
import 'package:ugrp/component/calendar.dart';
import 'package:ugrp/component/schedule_card.dart';
import 'package:ugrp/component/today_banner.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int lasttime = 0;
  int lastkcal = 0;

  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)!.settings.arguments.toString();
    //final inforlast = ModalRoute.of(context)!.settings.arguments as Information;
    lasttime += information.mytime!;
    lastkcal += information.mykcal!;

    return Scaffold(
        body: Center(
      child: Container(
          child: Column(children: <Widget>[
        Padding(padding: EdgeInsets.fromLTRB(0.0, 28.0, 0.0, 0.0)),
        SizedBox(
          width: 350.w,
          child: IconButton(
              alignment: Alignment.topRight,
              icon: Icon(Icons.face_outlined, size: 35),
              onPressed: (() {
                showDialog(context: context, builder: (BuildContext ctx)
                {
                  return AlertDialog(
                    content: Text(''),
                  );
                });
                /*showDialog(
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
                      });*/
              })),
        ),
        SizedBox(
            width: 350.w,
            height: 30.h,
            child: Text('나의 운동량',
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20))),
        SingleChildScrollView(
          child: Container(
            //height: 550.h,
            width: 350.w,
            child: Column(
              children: [
                Calendar(
                  selectedDay: selectedDay,
                  focusedDay: focusedDay,
                  onDaySelected: onDaySelected,
                ),
                SizedBox(height: 8.0),
                TodayBanner(
                  selectedDay: selectedDay,
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: ScheduleCard(
                    calory: 11,
                    totaltime: 9,
                  ),
                ),
                SizedBox(height: 50.h),
                SizedBox(
                    width: 300.w,
                    child: ElevatedButton(
                      child: Text('운동 시작하기'),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/third');
                      },
                    ))
              ],
            ),
          ),
        ),

        /*SizedBox(
            width: 300.w,
            height: 40.h,
            child: Text('오늘 나의 운동량',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w200))),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 150.w,
              height: 30.h,
              child: Center(
                  child: Text(
                '$lasttime' + '분',
                style: TextStyle(fontSize: 15.sp, color: Colors.black),
              )),
              color: Colors.grey),
          SizedBox(width: 1.w),
          Container(
              width: 150.w,
              height: 30.h,
              child: Center(
                  child: Text(
                '$lastkcal' + 'kcal',
                style: TextStyle(fontSize: 15.sp, color: Colors.black),
              )),
              color: Colors.grey)
      ]),
      SizedBox(height: 50.h),
      SizedBox(
            height: 50.h,
            width: 300.w,
            child: Text('이번달 나의 운동량', style: TextStyle(fontSize: 23.sp))),
      SizedBox(
          height: 300.h,
          width: 300.w,
          child: Center(child: Text('달력')),
      ),*/
      /*SizedBox(
            width: 300.w,
            child: ElevatedButton(
              child: Text('운동 시작하기'),
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              },
            ))*/
      ])),
    ));
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }
}
