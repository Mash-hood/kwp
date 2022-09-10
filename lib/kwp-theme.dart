import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KwpTheme {
  static const primaryVariant1 = Color(0xFFE3F2FD);
  static const primaryColor = Color(0xFF0D47A1);
  static const accentSuccessful = Color(0xFF4FC879);
  static const accentFailed = Color(0xFFB00020);
  static const accentTextField = Color(0x35D9D9D9);
  static const unSelectedBN = Color(0xFFD9D9D9);
  static const buttonsBackDropColor = Color(0xFFE9EAEE);
  static const primaryColorVariant2 = Color(0xFF00B9FF);
  static const bottomSheetColor = Color(0xFFF9FCFF);

  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.black),
    headline2: GoogleFonts.poppins(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: Colors.black),
    headline3: GoogleFonts.poppins(
        fontSize: 46, fontWeight: FontWeight.w400, color: Colors.black),
    headline4: GoogleFonts.poppins(
        fontSize: 33,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.black),
    headline5: GoogleFonts.poppins(
        fontSize: 23, fontWeight: FontWeight.w400, color: Colors.black),
    headline6: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      //color: Colors.white
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 15,
      fontWeight: FontWeight.w700, // 400 to 700 to fit design
      letterSpacing: 0.15,
      // color: Colors.white
    ),
    subtitle2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: Colors.black),
    bodyText1: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: Colors.black),
    bodyText2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.black),
    button: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.black),
    caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: Colors.black),
    overline: GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: Colors.black),
  );

  // to be used for dark theme
  /*
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 93,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.white),
    headline2: GoogleFonts.poppins(
        fontSize: 58,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: Colors.white),
    headline3: GoogleFonts.poppins(
        fontSize: 46, fontWeight: FontWeight.w400, color: Colors.white),
    headline4: GoogleFonts.poppins(
        fontSize: 33,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.white),
    headline5: GoogleFonts.poppins(
        fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white),
    headline6: GoogleFonts.poppins(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Colors.white),
    subtitle1: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: Colors.white),
    subtitle2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: Colors.white),
    bodyText1: GoogleFonts.poppins(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: Colors.white),
    bodyText2: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.white),
    button: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.white),
    caption: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: Colors.white),
    overline: GoogleFonts.poppins(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: Colors.white),
  );
   */

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        foregroundColor: primaryVariant1,
        backgroundColor: primaryColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: primaryColor,
        backgroundColor: primaryVariant1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: accentTextField,
        backgroundColor: primaryColor,
      ),
      textTheme: lightTextTheme,
      iconTheme: const IconThemeData(
        color: primaryVariant1,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: primaryColor,
      ),
    );
  }

// to be used for dark theme
  /*
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        foregroundColor: primaryVariant1,
        backgroundColor: primaryColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: primaryColor,
        backgroundColor: primaryVariant1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryVariant1,
        backgroundColor: primaryColor,
      ),
      textTheme: darkTextTheme,
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: primaryColor,
      ),
    );
  }
 */
}
