import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text('오늘의 운동 성공!'),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('목표를 달성했습니다.'),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('소모칼로리(kcal)')),
                      DataColumn(label: Text('운동시간(분)')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('${information.mytime}')),
                        DataCell(Text('${information.mykcal}')),
                      ]),
                    ],
                  ),
                  //Text('소모칼로리(kcal): ${mykcal} 시간(분): ${mytime}'),
                  //mykcal: 총 운동소모칼로리 mytime: 총 운동시간
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: Text('menu'),
                onPressed: () {
                 // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) {return SecondPage(mytime, mykcal);))

                  Navigator.of(context)
                      .pushReplacementNamed('/second',
                      //arguments: Information(mytime : infor.mytime, mykcal: infor.mykcal)
                      ); //메뉴 화면으로 돌아가기
                },
              ),
            ),
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