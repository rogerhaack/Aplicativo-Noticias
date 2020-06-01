import 'package:flutter/material.dart';
import 'package:journal_new/src/helpers/ApiRequest.dart';
import 'package:journal_new/src/widgets/CardBuilder.dart';
import 'package:journal_new/ui/Home.dart';

class ScreenCardsBuilder extends StatelessWidget {
  String title;
  String route;
  ApiRequest apiRequest;

  ScreenCardsBuilder(String title, String route) {
    this.title = title;
    this.route = route;
    this.apiRequest = ApiRequest(route);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff334558),
        title: Text(this.title),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            }),
      ),
      body: FutureBuilder(
        future: this.apiRequest.request(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> data = snapshot.data;

            return ListView.builder(
                itemCount: data['data']['matia'].length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> lastNews = data['data']['matia'][index];

                  String imageUrl = "";

                  if (lastNews['images'].length > 0) {
                    Map<String, dynamic> images = lastNews['images'];

                    images.forEach((k, v) => imageUrl = v);
                  }

                  return CardBuilder(
                      imageUrl, lastNews['title'], lastNews['url']);
                });
          } else {
            return Container(width: 0.0, height: 0.0);
          }
        },
      ),
    );
  }
}
