import 'package:flutter/material.dart';
import 'package:restaurant/view/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rawan~s Restaurant',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
