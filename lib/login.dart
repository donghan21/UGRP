import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:ugrp/data/user.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> with SingleTickerProviderStateMixin {
  FirebaseDatabase? _database;
  DatabaseReference? reference;
  String _databaseURL = 'https://ugrp-884ff-default-rtdb.firebaseio.com/';

  double opacity = 0;
  AnimationController? _animationController;
  Animation? _animation;
  TextEditingController? _idTextController;
  TextEditingController? _pwTextController;

  @override
  void initState() {
    super.initState();

    _idTextController = TextEditingController(text: 'welcome');
    _pwTextController = TextEditingController(text: '123456');

    _animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation =
        Tween<double>(begin: 0, end: pi * 2).animate(_animationController!);
    _animationController!.repeat();
    Timer(Duration(seconds: 2), () {
      setState(() {
        opacity = 1;
      });
    });

    _database = FirebaseDatabase(databaseURL: _databaseURL);
    reference = _database!.reference().child('user');
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            SizedBox(
              height: 70,
              child: Text(
                  'App title',
                  style: TextStyle(fontSize: 30),
                ),
            ),
            Container(
              height: 150,
              width: 250,
              color: Colors.amber,
              child: Text('로그인은 하기 쉬우면 하고 일단 보류', style: TextStyle(fontSize: 15)),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _idTextController,
                      maxLines: 1,
                      decoration: InputDecoration(
                          labelText: 'Username', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _pwTextController,
                      obscureText: true,
                      maxLines: 1,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/sign');
                          },
                          child: Text('회원가입'),
                      ),

                      SizedBox(width: 20),

                      TextButton(
                          onPressed: () {
                            if (_idTextController!.value.text.length == 0 ||
                                _pwTextController!.value.text.length == 0) {
                              makeDialog('빈칸이 있습니다');
                            } else {
                              reference!
                                  .child(_idTextController!.value.text)
                                  .onValue
                                  .listen((event) {
                                if (event.snapshot.value == null) {
                                  makeDialog('아이디가 없습니다');
                                } else {
                                  reference!
                                      .child(_idTextController!.value.text)
                                      .onChildAdded
                                      .listen((event) {
                                    User user =
                                        User.fromSnapshot(event.snapshot);
                                    var bytes = utf8
                                        .encode(_pwTextController!.value.text);
                                    var digest = sha1.convert(bytes);
                                    if (user.pw == digest.toString()) {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/second',
                                              arguments: _idTextController!
                                                  .value.text);
                                    } else {
                                      makeDialog('비밀번호가 틀립니다');
                                    }
                                  });
                                }
                              });
                            }
                          },
                          child: Text('로그인', style: TextStyle(color: Colors.redAccent)),

                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )
                ],
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),])
    );
  }

  void makeDialog(String text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(text),
          );
        });
  }
}
