import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);

  static ThemeData lightTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.quicksand(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: GoogleFonts.quicksand(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: lightColor,
      textTheme: TextTheme(
          titleMedium: GoogleFonts.elMessiri(
              color: const Color(0xff242424),
              fontSize: 30,
              fontWeight: FontWeight.bold),
          bodyLarge: GoogleFonts.elMessiri(
              color: const Color(0xff242424),
              fontSize: 28,
              fontWeight: FontWeight.bold),
          bodyMedium: GoogleFonts.elMessiri(
              color: const Color(0xff242424),
              fontSize: 25,
              fontWeight: FontWeight.bold)),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Color(0xff242424),
          size: 30,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ));
  static ThemeData darkTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.quicksand(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: GoogleFonts.quicksand(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkColor,
      textTheme: TextTheme(
          titleMedium: GoogleFonts.elMessiri(
              color: const Color(0xffF8F8F8),
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Color(0xffF8F8F8),
          size: 30,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ));
}
