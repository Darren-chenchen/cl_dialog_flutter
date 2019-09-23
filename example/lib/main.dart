import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:cl_dialog_flutter/cl_dialog_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new GestureDetector(
                onTap: _show,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('基础弹框', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
              new GestureDetector(
                onTap: _showImg,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text('有图片弹框', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _show() async {
    bool isRightAction = await CLDialogFlutter.cl_show('提示', '确定退出登录', '取消', '确定');
    print(isRightAction);
  }
  _showImg() async {
    bool isRightAction = await CLDialogFlutter.cl_showImg('success', '确定退出登录', '取消', '确定');
    print(isRightAction);
  }
}
