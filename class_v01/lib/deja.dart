import 'package:flutter/material.dart';


void main() {
  runApp(Deja());
}

class Deja extends StatelessWidget{
  const Deja({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: onPressed () {},
                icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }

}