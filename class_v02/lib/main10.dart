import 'package:flutter/material.dart';

void main(){
  runApp(MyApp10());
}

class MyApp10 extends StatelessWidget {
  const MyApp10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          // ListView 안에 내부적으로 스크롤 뷰가 들어가 있다.
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("1"),
                ),
                title: Text("item1"),
                subtitle: Text("item description"),
                trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                  print('click');
                },),
              ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("1"),
              ),
              title: Text("item1"),
              subtitle: Text("item description"),
              trailing: IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                print('click');
              },),
            ),
          ],
        ),
      ),
    );
  }
}
