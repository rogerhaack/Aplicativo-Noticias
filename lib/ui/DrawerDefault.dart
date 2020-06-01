import 'package:flutter/material.dart';
import 'package:journal_new/src/CustomIcons.dart';
import 'package:journal_new/ui/Daily.dart';
import 'package:journal_new/ui/Multimedia.dart';
import 'package:journal_new/ui/News.dart';
import 'package:journal_new/ui/Sports.dart';

import 'Opinion.dart';

class DrawerDefault extends StatefulWidget {
  @override
  _DrawerDefault createState() => _DrawerDefault();
}

class _DrawerDefault extends State<DrawerDefault> {
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xff334558).withOpacity(0.8),
          dividerColor: Colors.white,
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 80.0,
                      height: 80.0,
                      child: ClipOval(
                        child: Image.asset('assets/images/person.jpg'),
                      )),
                  Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text("John Doe",
                      textScaleFactor: 1.2,
                      style: TextStyle(color: Colors.white))
                ],
              )),
              listIconBuilder('Inicial', Icons.home, () {}),
              Divider(),
              listIconBuilder(
                  'Últimas Notícias', CustomIcons.newspaper, News()),
//              Divider(),
              listIconBuilder('Esportes', CustomIcons.sport, Sports()),
//              Divider(),
              listIconBuilder('Cotidiano', CustomIcons.calendar, Daily()),
//              Divider(),
              listIconBuilder(
                  'Multimidia', CustomIcons.multimedia, Multimedia()),
//              Divider(),
              listIconBuilder('Opinião', Icons.message, Opinion()),
            ],
          ),
        ));
  }

  listIconBuilder(String name, IconData icon, Object screen) {
    return ListTile(
      title: RichText(
          text: TextSpan(text: name, style: TextStyle(color: Colors.white))),
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return screen;
        }));
      },
    );
  }
}
