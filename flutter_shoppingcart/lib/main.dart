import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/theme.dart';
import 'components/shoppingcart_detail.dart';
import 'components/shoppingcart_header.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: SafeArea(child: ShoppingCartPage()),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bulidShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingcartHeader(),
          Expanded(child: ShoppingcartDetail()),
        ],
      ),
    );
  }

  // private 메서드 만들어 보기
  AppBar _bulidShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
        SizedBox(width: 16),
      ],
      elevation: 0.0,
    );
  }
}
