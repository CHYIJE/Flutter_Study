import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  Color _backgroundColor = Colors.white;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    print("메모리에 올라갈때 한번만 호출이 된다.");

    _controller = AnimationController(
        // 빌드 할 때 미리 객체를 생성해 두는 녀석 --> 불변 객체가 됨
        duration: const Duration(seconds: 100), // 5. 애니메이션의 지속 시간을 설정합니다.
        vsync: this); // 6. vsync는 화면 새로고침 주기에 동기화하여 애니메이션 성능을 최적화합니다.

    // Tween을 사용하여 애니메이션 범위 정의 (0.5 ~ 1.0)
    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut)) // 7. 애니메이션이 부드럽게 시작하고 끝나도록 설정합니다.
      ..addListener(() {
        setState(() {}); // 8. 애니메이션이 진행될 때마다 화면을 업데이트합니다.
      });
  }

  @override
  void dispose() {
    _controller.dispose(); // 9. 메모리 누수를 방지하기 위해 애니메이션 컨트롤러를 해제합니다.
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _backgroundColor = _getRandomColor();
    });

    // 코드
    _controller.forward().then((_) {
      _controller.reverse();
    });
  }

  // 랜덤 색상을 생성하는 메서드를 만들자.
  Color _getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('애니메이션 및 생명주기'),
        ),
        backgroundColor: _backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '버튼을 누른 횟수 : ${_counter}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Transform.scale(
                scale: _animation.value,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text('눌러보기', style: TextStyle(fontSize: 18),),
                  onPressed: _incrementCounter,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
