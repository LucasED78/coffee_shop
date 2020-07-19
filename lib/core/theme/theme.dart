import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    primaryColor: Color(0xffc08672),
    accentColor: Color(0xfffae9d4),
    buttonColor: Color(0xffc08672),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xff30120b),
        fontSize: 36
      ),
      headline2: TextStyle(
        color: Color(0xff30120b),
        fontSize: 28
      ),
      headline3: TextStyle(
        color: Color(0xff30120b),
        fontSize: 22
      ),
      headline4: TextStyle(
        color: Color(0xff30120b),
        fontSize: 18
      ),
      subtitle1: TextStyle(
        color: Colors.black87,
        fontSize: 16
      )
    ),
    errorColor: Color(0xffc14b34),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        headline1: TextStyle(
          color: Color(0xffaf9a92),
          fontSize: 22
        )
      ),
      iconTheme: IconThemeData(
        color: Color(0xffc08672)
      )
    ),
    iconTheme: IconThemeData(
      color: Color(0xffc08672)
    )
  );
}
