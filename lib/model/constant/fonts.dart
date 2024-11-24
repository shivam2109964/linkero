import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle montserratDesign({
    required double fontSize,
    required Color color,
    FontWeight fontWeight = FontWeight.normal,
    double latterSpacing = 0,
  }) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      letterSpacing: latterSpacing,
    );
  }

  static TextStyle poppinsDesign({
    required double fontSize,
    required Color color,
    FontWeight fontWeight = FontWeight.normal,
    double latterSpacing = 0,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      letterSpacing: latterSpacing,
    );
  }
}
