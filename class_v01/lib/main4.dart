import 'package:class_v01/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 앞으로 MaterialApp 안에서 위젯들을 선언해 보자
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '전두환의 작전',
      theme: ThemeData(colorScheme: ColorScheme.light(primary: Colors.redAccent),
        primarySwatch: Colors.red
      ),
      // 시각적 레이아웃 구성요소를 잡아주는 녀석이다.
      home: Scaffold(
        appBar: AppBar(title: Text("성공하면 혁명"), backgroundColor: Colors.blue),
      ),
    );
  }
}