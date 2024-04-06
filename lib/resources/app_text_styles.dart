import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle montserratSmall(
      {Color color = Colors.black,
      fontSize = 12,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.montserrat(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle montserratMedium(
      {Color color = Colors.black,
      fontSize = 16,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.montserrat(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle montserratLarge(
      {Color color = Colors.black,
      fontSize = 36,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.montserrat(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle pattayaSmall(
      {Color color = Colors.black,
      fontSize = 14,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.pattaya(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

static TextStyle pattayaMedium(
      {Color color = Colors.black,
      fontSize = 20,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.pattaya(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle pattayaLarge(
      {Color color = Colors.black,
      fontSize = 36,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.pattaya(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }
}
