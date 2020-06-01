import 'package:flutter/material.dart';
import 'package:journal_new/src/widgets/ScreenCardsBuilder.dart';

class News extends StatefulWidget {
  _News createState() => _News();
}

class _News extends State<News> {
  Widget build(BuildContext context) {
    return ScreenCardsBuilder("Últimas Notícias", "/ultimas_noticias.json");
  }
}