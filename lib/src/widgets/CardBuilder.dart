import 'package:flutter/material.dart';
import 'package:journal_new/ui/NewsWebView.dart';

class CardBuilder extends StatelessWidget {
  String imageUrl;
  String title;
  String siteUrl;

  CardBuilder(String imageUrl, String title, String siteUrl) {
    this.imageUrl = imageUrl;
    this.title = title;
    this.siteUrl = siteUrl;
  }

  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              builder: (context) => NewsWebView(url: this.siteUrl,title: this.title,)));
        },
        child: Container(
          width: 300,
          height: 100,
          child: Row(
            children: <Widget>[
              Container(
                width: 90.0,
                height: 70.0,
                child: this.imageUrl.length > 0
                    ? Image.network(this.imageUrl)
                    : Image.asset("assets/images/no-picture.jpg"),
              ),
              Padding(padding: EdgeInsets.only(left: 10.0)),
              Flexible(
                  child: RichText(
                text: TextSpan(
                    text: this.title,
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
                overflow: TextOverflow.fade,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
