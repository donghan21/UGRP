import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'sixthPage.dart';

class SeventhPage extends StatefulWidget {

  @override
  State<SeventhPage> createState() => _SeventhPage();
}

class _SeventhPage extends State<SeventhPage> {

  @override
  Widget build(BuildContext context) {

    //final infor = ModalRoute.of(context)!.settings.arguments as Information;
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.h),
              SizedBox(height: 55.h, child: Text('축하합니다!!', style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold))),
              SizedBox(height: 20.h),
              SizedBox(child: Text('목표를 달성했습니다!', style: TextStyle(fontSize: 15.sp),)),
              SizedBox(height: 20.h),
              SizedBox(child: Text('?? 일 연속 운동 중')),
              SizedBox(height: 20.h),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                Container(decoration: BoxDecoration(color: Colors.black26, border: Border(left: BorderSide(color: Colors.black, width: 2.0), top: BorderSide(color: Colors.black, width: 2.0), right: BorderSide(color: Colors.black, width: 1.0))),width: 150.w, height: 35.h, alignment: Alignment.center, child: Text('소모 칼로리')),
                Container(decoration: BoxDecoration(color: Colors.black26, border: Border(top: BorderSide(color: Colors.black, width: 2.0), right: BorderSide(color: Colors.black, width: 2.0))),width: 150.w, height: 35.h, alignment: Alignment.center, child: Text('소요 시간', textAlign: TextAlign.center)),]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget> [
                Container(decoration: BoxDecoration(color: Colors.white, border: Border(left: BorderSide(color: Colors.black, width: 2.0), bottom: BorderSide(color: Colors.black, width: 2.0), top: BorderSide(color: Colors.black, width: 1.0), right: BorderSide(color: Colors.black, width: 1.0))),width: 150.w, height: 35.h, alignment: Alignment.center, child: Text('?? kcal')),
                Container(decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Colors.black, width: 2.0), right: BorderSide(color: Colors.black, width: 2.0), top: BorderSide(color: Colors.black, width: 1.0))),width: 150.w, height: 35.h, alignment: Alignment.center, child: Text('?? 분')),]),
              SizedBox(height: 30.h,),
              Container(decoration: BoxDecoration(border: Border.all(color: Colors.black)),width: 200.w, height: 170.h, child: Text('칼로리에 맞는 적당한 음식 사진 혹은 이미지')),
              SizedBox(height: 30.h,),
              SizedBox(width: 250.w, child: Text('?? 만큼의 칼로리를 소비했습니다!', style: TextStyle(fontSize: 17.sp))),
              SizedBox(height: 40.h),
              ElevatedButton(onPressed: ( () {Navigator.of(context).pushReplacementNamed('/second');} ), child: Text('메뉴로 돌아가기'),style: ElevatedButton.styleFrom(minimumSize: Size(280.w, 40.h)))




            ],
          ),
        ),
    );
  }
}


/*class Information {
  int? mytime;
  int? mykcal;
  Information({this.mytime, this.mykcal});
}*/