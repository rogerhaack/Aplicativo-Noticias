import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:journal_new/src/CustomIcons.dart';
import 'package:journal_new/ui/Opinion.dart';

import 'Daily.dart';
import 'DrawerDefault.dart';
import 'Multimedia.dart';
import 'News.dart';
import 'Sports.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff334558)),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff334558),
          title: Text('Inicio'),
        ),
        drawer: DrawerDefault(),
        body: Container(
            color: Colors.white,
            child: Center(
              child: Container(
                width: 300,
                height: 300,
                child: Image.asset("assets/images/logo.jpg"),
              ),
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff334558),
          child: const Icon(CustomIcons.newspaper),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return News();
            }));
          },
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              iconBuilder(CustomIcons.sport, Sports()),
              iconBuilder(CustomIcons.calendar, Daily()),
              Padding(padding: EdgeInsets.only(right: 10.0)),
              iconBuilder(Icons.message, Opinion()),
              iconBuilder(CustomIcons.multimedia, Multimedia()),
            ],
          ),
        ),
      ),
    );
  }

  iconBuilder(IconData icon, Object screen) {
    return IconButton(
      icon: Icon(
        icon,
        size: 35.0,
      ),
      onPressed: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return screen;
        }));
      },
    );
  }
}
