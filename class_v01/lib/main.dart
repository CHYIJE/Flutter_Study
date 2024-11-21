import 'package:flutter/material.dart';
import 'dart:math';

// 코드의 시작점
void main() {
  runApp(const MyApp());
}

// 상태기반으로 위젯을 분류한다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amberAccent, docoreation 속성 사용시 color 속성 넣으면 오류 발생
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50.0),
        // borderRadius: BorderRadius.all(
        //   Radius.circular(
        //     10.0,
        //   ),
        //),
        border: Border.all(
          width: 5,
          color: Colors.amber,
        ),
      ),
      child: Center(
          child: Text('김정은의 가슴에 총칼을 박자!', textDirection: TextDirection.ltr),
      ),
    );
  }
}
