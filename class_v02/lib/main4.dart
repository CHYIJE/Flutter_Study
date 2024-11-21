import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // TextEditingController로 TextField의 controller에 넣을 객체를 선언
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('로그인', style: TextStyle(fontSize: 30),
        ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/a.png'),
                const SizedBox(
                  height: 50,

                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: '이메일',
                    hintText: '이메일',
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.brown),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(width: 1, color: Colors.brown),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.search,
                  obscureText: false,
                  // TextEditingController 객체를 controller에 설정
                  controller: _emailController,
                ),
                const SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    hintText: '8자리 이상 영문 특수기호',
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.brown),
                    fillColor: Color(0xFFE4C4),
                    filled: true,

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(width: 1, color: Colors.brown),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.search,
                  obscureText: false,
                  // TextEditingController 객체를 controller에 설정
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 30,

                ),

                ElevatedButton(
                  onPressed: () {
                    // TextEditingController 객체의 text 속성으로 TextField의 입력된
                    // 문자열을 가져올 수 있음
                    print(_emailController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 193, 158, 0.5), // 원하는 색상으로 변경
                  ),
                  child: Text('로그인'),
                ),
                const SizedBox(
                  height: 40,

                ),
                Text('비밀번호를 잊으셨나요?', style: TextStyle(color: Colors.brown),),
                const SizedBox(
                  height: 40,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('계정이 없으신가요?', style: TextStyle(color: Colors.black),),
                    const SizedBox(
                      width: 15,
                    ),
                    Text('국가에 봉사하라', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Divider(
                  color: Color.fromRGBO(255, 193, 158, 1), // 선 색상
                  thickness: 2, // 선 두께
                  indent: 10, // 시작 여백
                  endIndent: 10, // 끝 여백
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // TextEditingController 객체의 text 속성으로 TextField의 입력된
                    // 문자열을 가져올 수 있음
                    print(_emailController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(255, 193, 158, 0.5), // 원하는 색상으로 변경
                  ),
                  child: Text('Google 로그인'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
