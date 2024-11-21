import 'package:flutter/material.dart';

//  수입하다. material.dart
// 코드의 진입점
void main() {
  runApp(const MyApp());
}

// 처음부터 위젯을 개발하는 것은 힘들다. --> 상속, 구현받아서 개발을 진행한다.
class MyApp extends StatelessWidget {
  // 멤버 변수 선언 영역
  // 함수 선언 영역

  // 생성자
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 지역 변수 , 코드 작성
    print('build() 메서드 호출');

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: StorePage(),
    );
  } // end of build
} // end of MyApp class

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  // Scaffold - 시각적 레이아웃 구조를 만들어주는 위젯
  // 위젯은 -- 부모가 될수 있는 위젯이 있고, 자식만 될 수 있는 위젯이 존재한다.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Text(
                  "Woman",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "Kids",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "shoes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "Bag",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
                fit: BoxFit.cover,
                "assets/sampleimg1.jpeg"),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
                fit: BoxFit.cover,
                "assets/sampleimg2.jpeg"),
          ),
        ],
      )),
    );
  }
}
