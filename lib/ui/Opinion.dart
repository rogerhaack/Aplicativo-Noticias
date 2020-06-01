import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_new/src/widgets/ScreenCardsBuilder.dart';

class Opinion extends StatefulWidget {
  _Opinion createState() => _Opinion();
}

class _Opinion extends State<Opinion> {
  Widget build(BuildContext context) {
    return ScreenCardsBuilder("Últimas Opiniões", "/ultimas_opiniao.json");
  }
}