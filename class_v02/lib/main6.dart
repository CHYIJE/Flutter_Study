import 'package:flutter/material.dart';

void main() {
  runApp(MyApp6());
}

class MyApp6 extends StatefulWidget {
  const MyApp6({super.key});

  @override
  State<MyApp6> createState() => _MyApp6State();
}

class _MyApp6State extends State<MyApp6> {

  int _count = 0;

  int get count => _count;

  @override
  void initState() {
    super.initState();
    // 객체가 메모리에 올라 올때 단 한버만 수행 시키는 메서드
    print("initState() 메서드 호출");
  }

  @override
  Widget build(BuildContext context) {

    // 지역변수
    print("bulid()메서드 호출");

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _count++;
                print("_count : $_count" );
              });
            },
            child: Text('$_count'),
          ),
        ),
      ),
    );
  }
}
