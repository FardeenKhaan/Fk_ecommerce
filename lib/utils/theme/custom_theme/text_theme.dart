import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FKTextTheme {
  FKTextTheme._();
  static TextTheme lighttexttheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black54,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: Colors.black54,
    ),
  );
  static TextTheme darktexttheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.white70,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white70,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white54,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white54,
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.white70,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: Colors.white54,
    ),
  );
}
