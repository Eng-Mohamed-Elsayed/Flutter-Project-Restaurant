import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/model/content_web.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebView extends StatelessWidget {
  const AppWebView({Key? key, required this.data}) : super(key: key);
  final ModelWeb data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          title: Text(
            data.title,
            style: GoogleFonts.acme(),
          ),
        ),
        body: WebView(
          initialUrl: data.url,
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
