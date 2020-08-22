import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

ThemeData theme = ThemeData(
    fontFamily: 'Gotham',
    primaryColor: Color(0xff3957F2),
    accentColor: Color(0xff2C45BF),
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0),
    )

    // TextStyle(color: Colors.pink),
    // TextTheme(bodyColor: Colors.pink, displayColor: Colors.pink)

    //   headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    //   title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //   body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),

    );
List<BoxShadow> boxShadows = [
  BoxShadow(offset: Offset(10, 10), color: Colors.black38, blurRadius: 20),
  BoxShadow(
      offset: Offset(-10, -10),
      color: Colors.white.withOpacity(0.85),
      blurRadius: 20)
];
