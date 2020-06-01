import 'package:flutter/material.dart';
import 'package:journal_new/ui/Splash.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:load/load.dart';

void main() {
  runApp(LoadingProvider(
    child: BlocProvider(
        blocs: [],
        child: MaterialApp(
          home: Splash(),
        )),
  ));
}