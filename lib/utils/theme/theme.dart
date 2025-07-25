import 'package:fk_ecommerce/utils/theme/custom_theme/appbar_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/chip_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/text_theme.dart';
import 'package:fk_ecommerce/utils/theme/custom_theme/textfield_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FkAppTheme {
  FkAppTheme._(); // not used again and again constructor
  static ThemeData lighttheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: GoogleFonts.poppins().fontFamily,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: FKTextTheme.lighttexttheme,
    chipTheme: FKChipTheme.lightChipTheme,
    checkboxTheme: FKCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: FKElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FKOutlinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: FKBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: FKTextFieldTheme.LightInputDecorationTheme,
    appBarTheme: FKAppBarTheme.lightAppBarTheme,
  );

  static final darktheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.poppins().fontFamily,
    primaryColor: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: FKTextTheme.darktexttheme,
    chipTheme: FKChipTheme.darkChipTheme,
    checkboxTheme: FKCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: FKElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: FKOutlinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: FKBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: FKTextFieldTheme.DarkInputDecorationTheme,
    appBarTheme: FKAppBarTheme.darkAppBarTheme,
  );
}
