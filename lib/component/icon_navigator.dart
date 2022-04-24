import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconNavigation extends StatelessWidget {
  const IconNavigation({Key? key, this.index = 0, required this.indexPage})
      : super(key: key);
  final int index, indexPage;

  @override
  Widget build(BuildContext context) {
    return Icon(
      _checkIcon,
      color: _checkColor,
    );
  }

  //  * check color

  Color get _checkColor => index == indexPage ? Colors.white : Colors.grey;

  //* Check Icon
  IconData get _checkIcon {
    IconData news;
    IconData video;
    if (Platform.isAndroid) {
      news = Icons.article;
      video = Icons.ondemand_video_outlined;
    } else {
      news = CupertinoIcons.news_solid;
      video = CupertinoIcons.tv;
    }

    return index == 0 ? news : video;
  }
}
