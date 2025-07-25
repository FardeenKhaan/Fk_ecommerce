import 'package:flutter/material.dart';

class FKBottomSheetTheme {
  FKBottomSheetTheme._(); // not used again and again constructor

  static final lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white70,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );

  static final darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black54,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
}
