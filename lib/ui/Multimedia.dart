import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_new/src/widgets/ScreenCardsBuilder.dart';

class Multimedia extends StatefulWidget {
  _Multimedia createState() => _Multimedia();
}

class _Multimedia extends State<Multimedia> {
  Widget build(BuildContext context) {
    return ScreenCardsBuilder("Últimas Multimídia", "/ultimas_multimidia.json");
  }
}
