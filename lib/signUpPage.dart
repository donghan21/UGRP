import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ugrp/data/user.dart';
import 'main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignPage();
}

class _SignPage extends State<SignPage> {
  final _authentication = FirebaseAuth.instance;
  FirebaseDatabase? _database;
  DatabaseReference? reference;
  String _databaseURL = 'https://ugrp-884ff-default-rtdb.firebaseio.com/';

  TextEditingController? _idTextController;
  TextEditingController? _pwTextController;
  TextEditingController? _pwCheckTextController;

  final _formKey = GlobalKey<FormState>();
  String userID = '';
  String userEmail = '';
  String userPW = '';

  void _tryValidation() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  void initState() {
    super.initState();
    /*_idTextController = TextEditingController();
    _pwTextController = TextEditingController();
    _pwCheckTextController = TextEditingController();*/

    _database = FirebaseDatabase(databaseURL: _databaseURL);
    reference = _database?.reference().child('user');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //FocusManager.instance.primaryFocus?.unfocus();
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('회원 가입'),
        ),
        body: Container(
            child: Center(
              child: Form(
                key: _formKey,
                child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 200.w,
                        child: TextFormField(
                          key: ValueKey(3),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 4) {
                              return '4자 이상 입력해주세요';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            userID = value!;
                          },
                          onChanged: (value) {
                            userID = value;
                          },
                          //controller: _idTextController,
                          maxLines: 1,
                          decoration: InputDecoration(
                              hintText: '4자 이상 입력해주세요',
                              labelText: 'ID',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 200.w,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          key: ValueKey(4),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return '올바른 이메일 주소를 입력해주세요';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            userEmail = value!;
                          },
                          onChanged: (value) {
                            userEmail = value;
                          },
                          //controller: _pwTextController,
                          maxLines: 1,
                          decoration: InputDecoration(
                              hintText: '@ 를 포함해주세요',
                              labelText: 'Email',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 200.w,
                        child: TextFormField(
                          key: ValueKey(5),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return '6자 이상 입력해주세요';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            userPW = value!;
                          },
                          onChanged: (value) {
                            userPW = value;
                          },
                          //controller: _pwCheckTextController,
                          obscureText: true,
                          maxLines: 1,
                          decoration: InputDecoration(
                              hintText: '6자 이상 입력해주세요',
                              labelText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      FlatButton(
                        onPressed: () async {
                          _tryValidation();
                          try {
                            final newUser =
                                await _authentication.createUserWithEmailAndPassword(
                                    email: userEmail, password: userPW);

                            FirebaseFirestore.instance.collection('user').doc(newUser.user!.uid)
                                .set({
                              'userID' : userID,
                              'email' : userEmail,
                            });

                            if (newUser.user != null) {
                              print('pop');
                              Navigator.of(context).pop();
                            }
                          } catch (e) {
                            if(_formKey.currentState!.validate()){
                            makeDialog('이미 존재하는 이메일입니다.');
                            } else {makeDialog('입력 형식을 확인해주세요');}
                          }
                        },
                        child: Text(
                          '회원 가입',
                          style: TextStyle(color: Colors.white, fontSize: 15.sp),
                        ),
                        color: Colors.blueAccent,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),

              ),
            ),
          ),
      ),
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
