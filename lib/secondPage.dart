import 'package:flutter/material.dart';
import 'package:ugrp/login.dart';


class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final String id = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      body: Container(child: Column(
        children: <Widget>[SizedBox(height: 30),
          Row(children: <Widget>[SizedBox(width: 70, child: IconButton(icon: Icon(Icons.arrow_back_ios_new, size: 40), onPressed: (() {Navigator.of(context).pushReplacementNamed('/');}))), SizedBox(width: 250),
          SizedBox(child: IconButton(icon: Icon(Icons.settings, size: 40), onPressed: (() {})), )])
        ]
        )
      )

      );
  }
}