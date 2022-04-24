import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/component/icon_navigator.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation(
      {Key? key, required this.indexPage, required this.callBack})
      : super(key: key);
  final int indexPage;
  final void Function(int) callBack;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: indexPage,
      color: Colors.cyan.shade900,
      backgroundColor: Colors.white,
      items: [
        IconNavigation(indexPage: indexPage),
        IconNavigation(index: 1, indexPage: indexPage),
      ],
      onTap: callBack,
    );
  }
}
