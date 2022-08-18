import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'main.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Center(
              child: Container(
                color: Colors.white,
                width: 1000.w,
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\n운동 선택하기',
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              width: 330.w,
              height: 200.h,
              //margin: EdgeInsets.all(10),
              //padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '                 ',
                        ),
                        Text(
                          '런지',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/lunge');
                          },
                          icon: Icon(Icons.info_outline_rounded,
                              color: Colors.white, size: 30),
                        ),
                      ],
                    )),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/fifth');
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(250.w, 150.h),
                            side: BorderSide(color: Colors.blue)),
                        child: Image.asset('assets/lunge_960_555.jpg',
                            height: 150.h)),
                    // fitHeight도 가능
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 330.w,
              height: 200.h,
              //margin: EdgeInsets.all(10),
              //padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '                 ',
                        ),
                        Text(
                          '사이드 플랭크',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/side');
                          },
                          icon: Icon(Icons.info_outline_rounded,
                              color: Colors.white, size: 30),
                        ),
                      ],
                    )),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/fifth');
                        },
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(250.w, 150.h),
                            side: BorderSide(color: Colors.pinkAccent)),
                        child: Image.asset('assets/sideplank_512_296.jpg',
                            height: 150.h)),
                    // fitHeight도 가능
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              width: 330.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '                 ',
                      ),
                      Text(
                        '스쿼트',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/squat');
                        },
                        color: Colors.grey,
                        icon: Icon(Icons.info_outline_rounded,
                            color: Colors.white),
                      ),
                    ],
                  )),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/fifth');
                      },
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(250.w, 150.h),
                          side: BorderSide(color: Colors.grey)),
                      child: Image.asset('assets/squat_640_370.jpg',
                          height: 150.h)),
                ],
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ]),
    );
  }
}
