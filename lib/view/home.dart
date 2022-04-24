import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/component/body_video.dart';
import 'package:restaurant/component/body_menu.dart';

import 'package:restaurant/component/custom_navigator.dart';
import 'package:restaurant/utils/restaurant_Images.dart';
import '../component/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexPage = 0;
  List<Widget> pages = [const BodyMenu(), const BodyVideo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'Rawan`s Restaurant',
          style: GoogleFonts.pacifico(),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: AssetImage(RestaurantPathImages.logo),
            ),
          )
        ],
      ),
      drawer: const CustomDrawer(),
      body: pages[indexPage],
      bottomNavigationBar: CustomNavigation(
        indexPage: indexPage,
        callBack: _updateContent,
      ),
    );
  }

  // * update content
  void _updateContent(int index) {
    setState(() {
      indexPage = index;
    });
  }
}
