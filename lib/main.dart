// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_commerce_app/models/cart.dart';
import 'package:provider/provider.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      ),
    );
  }
}