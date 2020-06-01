import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_new/src/widgets/ScreenCardsBuilder.dart';

class Sports extends StatefulWidget {
  _Sports createState() => _Sports();
}

class _Sports extends State<Sports> {
  Widget build(BuildContext context) {
    return ScreenCardsBuilder("Últimas Esporte", "/ultimas_esportes.json");
  }
}
