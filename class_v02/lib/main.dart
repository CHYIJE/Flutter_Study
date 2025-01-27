import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Scrollable Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 1000,
                  child: Text('Header'),
              ),
              Container(
                color: Colors.red,
                height: 1000,
                child: Text('Footer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}