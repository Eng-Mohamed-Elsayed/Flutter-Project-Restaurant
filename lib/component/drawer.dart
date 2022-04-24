import 'package:flutter/material.dart';
import 'package:restaurant/component/header.dart';
import 'package:restaurant/component/setting_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            child: Column(
      children: const [
        //* Header
        HeaderDrawer(),

        //* Setting
        SettingDrawer(),
      ],
    )));
  }
}
