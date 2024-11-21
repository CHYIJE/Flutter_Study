import 'package:flutter/material.dart';

void main() {
  runApp(MyApp11());
}

class MyApp11 extends StatelessWidget {
  const MyApp11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(index.toString()),
              ),
              title: Text("Item $index"),
              subtitle: Text("sub Item $index"),
            );
          },
        ),
      ),
    );
  }
}
