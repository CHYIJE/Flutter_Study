import 'package:flutter/material.dart';


void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatelessWidget{
  const MyApp7({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.greenAccent
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.orange
              ),
            ),
            Positioned(
              top: 250,
              left: 250,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amberAccent
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}