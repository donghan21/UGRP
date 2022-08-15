import 'package:flutter/material.dart';
import 'package:ugrp/login.dart';
import 'package:flutter/services.dart';

class ThirdPage extends StatefulWidget{

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: () {Navigator.of(context).pop();},))
    );
  }
}