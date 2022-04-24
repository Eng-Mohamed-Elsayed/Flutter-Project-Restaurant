import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/model/content_web.dart';
import 'package:restaurant/model/m_menu.dart';
import 'package:restaurant/view/app_web.dart';

class CardMenu extends StatelessWidget {
  const CardMenu({Key? key, required this.data}) : super(key: key);
  final ModelMenu data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: InkWell(
        onTap: () => onClick(context),
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: Row(
            children: [
              //* Image
              Expanded(
                  child: Image.asset(
                data.image,
                height: 100,
                fit: BoxFit.fill,
              )),
              //* Spacer
              const SizedBox(
                width: 10,
              ),
              //* Title
              Expanded(
                flex: 2,
                child: Text(
                  data.title,
                  style: GoogleFonts.pacifico(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onClick(BuildContext context) {
    ModelWeb dataWeb = ModelWeb(title: data.title, url: data.urlPage);
    var route = MaterialPageRoute(
      builder: (context) => AppWebView(data: dataWeb),
    );
    Navigator.push(context, route);
  }
}
