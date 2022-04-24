import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/model/content_web.dart';

import '../model/m_video.dart';
import '../view/app_web.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({Key? key, required this.data}) : super(key: key);
  final ModelVideo data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: InkWell(
        onTap: () => onClick(context),
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: Column(
            children: [
              //*Images
              Expanded(
                flex: 4,
                child: Image(
                  width: double.infinity,
                  fit: BoxFit.fill,
                  image: NetworkImage(data.imageUrl),
                ),
              ),
              //* Title
              Expanded(
                child: Center(
                    child: Text(
                  data.title,
                  style: GoogleFonts.acme(
                      fontWeight: FontWeight.bold, fontSize: 30),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onClick(BuildContext context) {
    ModelWeb dataWeb = ModelWeb(title: data.title, url: data.videoUrl);
    var route = MaterialPageRoute(
      builder: (context) => AppWebView(data: dataWeb),
    );
    Navigator.push(context, route);
  }
}
