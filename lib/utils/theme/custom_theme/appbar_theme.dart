import 'package:flutter/material.dart';

class FKAppBarTheme {
  FKAppBarTheme._(); // not used again and again constructor

  static final lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    centerTitle: false,
    elevation: 0,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

  static final darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    centerTitle: false,
    elevation: 0,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}
