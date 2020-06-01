import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class NewsWebView extends StatefulWidget {
  String title;
  String url;
  String urlBase = "https://www.jornalnh.com.br";

  NewsWebView({Key key, @required this.url, @required this.title})
      : super(key: key);

  _NewsWebView createState() => _NewsWebView();
}

class _NewsWebView extends State<NewsWebView> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: WebView(
        initialUrl: widget.urlBase + widget.url,
      ),
    );
  }
}
