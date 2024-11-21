import 'package:class_v01/main2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Co Burn Studio"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(120.0),
            child: TextField(
              decoration: InputDecoration(labelText: '입력요망'),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 5.0,
          child: Icon(Icons.add),
          // () {} <-- 익명 함수 (dart 익명 클래스 개념은 없다)
          onPressed: () {
            print("11111111111111111111111");
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(title: Text("Item1"),),
              ListTile(title: Text("Item2"),),
            ],
          ),
        ),
        // persistentFooterButtons: [
        //   Icon(Icons.settings),
        //   SizedBox(width: 50, height: 50,),
        //   Icon(Icons.person_2),
        // ],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          backgroundColor: Colors.greenAccent,
          items: [
            BottomNavigationBarItem(
                label: '검색',
                icon: Icon(Icons.search_off_rounded)),
            BottomNavigationBarItem(
                label: '홈',
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'My',
                icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}