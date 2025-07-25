import 'package:flutter/material.dart';

class FKChipTheme {
  FKChipTheme._(); // not used again and again constructor

  static final lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    selectedColor: Colors.blue,
    labelStyle: TextStyle(color: Colors.black),
    checkmarkColor: Colors.white,
  );

  static final darkChipTheme = ChipThemeData(
    backgroundColor: Colors.black,
    selectedColor: Colors.blueGrey,
    disabledColor: Colors.grey,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    labelStyle: TextStyle(color: Colors.white),
    checkmarkColor: Colors.white70,
  );
}
