import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journal_new/src/widgets/ScreenCardsBuilder.dart';

class Daily extends StatefulWidget {
  _Daily createState() => _Daily();
}

class _Daily extends State<Daily> {

  Widget build(BuildContext context) {
    return ScreenCardsBuilder("Últimas Cotidiano", "/ultimas_cotidiano.json");
  }

}
