import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FKElevatedButtonTheme {
  FKElevatedButtonTheme._(); // not used again and again constructor

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.white70,
      side: BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.white70,
      side: BorderSide(color: Colors.blueGrey),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );
}
