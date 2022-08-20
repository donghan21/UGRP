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
                width: 300.w,
                height: 70.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('\n운동 선택하기',
                        style: TextStyle(
                            fontSize: 25.sp, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Stack(children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/fifth');
                },
                child: Container(
                  width: 330.w,
                  height: 200.h,
                  child: ClipRRect(
                    child: Image.asset('assets/lunge_960_555.jpg',
                        fit: BoxFit.fitHeight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  /* child: Center(
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
                  ),*/
                ),
              ),
              Positioned(
                  top: 140.0.h,
                  left: 20.0.w,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/fifth');
                      },
                      child: Text('런지',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))),
              Positioned(
                top: 0.0.h,
                left: 280.0.w,
                child: IconButton(
                    icon: Icon(Icons.info_outline_rounded,
                        color: Colors.white, size: 30),
                    onPressed: (() {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext ctx) {
                            return AlertDialog(
                                content: SizedBox(
                                    width: 200.w,
                                    height: 280.h,
                                    child: Column(children: <Widget>[
                                      ClipRRect(child: Image.asset('assets/lunge_960_555.jpg'), borderRadius: BorderRadius.circular(5),),
                                    SizedBox(height: 10.h),
                                    SizedBox(height: 30.h, width: 200.w, child: Text('런지 가이드')),
                                    SizedBox(height: 100.h, width: 200.w, child: Text('1. 발을 어깨 너비로 벌리고 엉덩이와 함께 한 발을 앞으로 내딛습니다.\n'
                                        ' 2. 먼저 포워드 런지를 시도하여 무릎이 안쪽 또는 바깥쪽으로 기울어지지는 않는지 확인합니다.\n '
                                        '앞쪽 다리의 발꿈치를 사용하여 전체적인 무게 중심을 변화시키지 않으면서 지면에 힘을 가합니다.', style: TextStyle(fontSize: 10)))])),
                                actions: [
                                  FlatButton(
                                      child: Text('확인'),
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      }),
                                ]);
                          });
                      //Navigator.of(context).pushReplacementNamed('/lunge');
                    })),
              )
            ]),
            SizedBox(height: 15.h),
            Stack(children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/fifth');
                },
                child: Container(
                  width: 330.w,
                  height: 200.h,
                  child: ClipRRect(
                    child: Image.asset('assets/sideplank_512_296.jpg',
                        fit: BoxFit.fitHeight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                  top: 140.0.h,
                  left: 20.0.w,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/fifth');
                      },
                      child: Text('사이드플랭크',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          )))),
              Positioned(
                top: 0.0.h,
                left: 280.0.w,
                child: IconButton(
                    icon: Icon(Icons.info_outline_rounded,
                        color: Colors.white, size: 30),
                    onPressed: (() {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext ctx) {
                            return AlertDialog(
                                content: SizedBox(
                                    width: 200.w,
                                    height: 280.h,
                                    child: Column(children: <Widget>[
                                      ClipRRect(child: Image.asset('assets/sideplank_512_296.jpg'), borderRadius: BorderRadius.circular(5),),
                                      SizedBox(height: 10.h),
                                      SizedBox(height: 30.h, width: 200.w, child: Text('사이드플랭크 가이드')),
                                      SizedBox(height: 100.h, width: 200.w, child: Text('1. 발을 어깨 너비로 벌리고 엉덩이와 함께 한 발을 앞으로 내딛습니다.\n'
                                          ' 2. 먼저 포워드 런지를 시도하여 무릎이 안쪽 또는 바깥쪽으로 기울어지지는 않는지 확인합니다.\n '
                                          '앞쪽 다리의 발꿈치를 사용하여 전체적인 무게 중심을 변화시키지 않으면서 지면에 힘을 가합니다.', style: TextStyle(fontSize: 10)))])),
                                actions: [
                                  FlatButton(
                                      child: Text('확인'),
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      }),
                                ]);
                          });
                    })),
              )
            ]),
            SizedBox(height: 15.h),
            Stack(children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/fifth');
                },
                child: Container(
                  width: 330.w,
                  height: 200.h,
                  child: ClipRRect(
                    child: Image.asset('assets/squat_640_370.jpg',
                        fit: BoxFit.fitHeight),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                  top: 140.0.h,
                  left: 20.0.w,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/fifth');
                      },
                      child: Text('스쿼트',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          )))),
              Positioned(
                top: 0.0.h,
                left: 280.0.w,
                child: IconButton(
                    icon: Icon(Icons.info_outline_rounded,
                        color: Colors.white, size: 30),
                    onPressed: (() {
                      showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext ctx) {
                            return AlertDialog(
                                content: SizedBox(
                                    width: 200.w,
                                    height: 280.h,
                                    child: Column(children: <Widget>[
                                      ClipRRect(child: Image.asset('assets/squat_640_370.jpg'), borderRadius: BorderRadius.circular(5),),
                                      SizedBox(height: 10.h),
                                      SizedBox(height: 30.h, width: 200.w, child: Text('스쿼트 가이드')),
                                      SizedBox(height: 100.h, width: 200.w, child: Text('1. 발을 어깨 너비로 벌리고 엉덩이와 함께 한 발을 앞으로 내딛습니다.\n'
                                          ' 2. 먼저 포워드 런지를 시도하여 무릎이 안쪽 또는 바깥쪽으로 기울어지지는 않는지 확인합니다.\n '
                                          '앞쪽 다리의 발꿈치를 사용하여 전체적인 무게 중심을 변화시키지 않으면서 지면에 힘을 가합니다.', style: TextStyle(fontSize: 10)))])),
                                actions: [
                                  FlatButton(
                                      child: Text('확인'),
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      }),
                                ]);
                          });
                    })),
              )
            ]),
            SizedBox(height: 30.h),
          ],
        ),
      ]),
    );
  }
}
