import 'package:class_v01/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyHome());
}

// 상태 여부 위젯 선정

// const, fianl
// const : 런타임 시점에 초기화 되는 코드를 const
// final : 런타임 시점에 초기화 되는 코드를 사용
  class MyHome extends StatelessWidget{
    // const 생성자
    const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // 자료구조 - 리스트를 나타낸다.
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
            margin: const EdgeInsets.only(bottom: 50),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}