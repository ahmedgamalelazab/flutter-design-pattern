import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../enums/enums.dart';

class HelperText {
  static dynamic getProperTextStyle({required TextType textType}) {
    switch (textType) {
      case TextType.HEADER:
        return GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        );
      case TextType.BODY:
        return GoogleFonts.openSans(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        );
      case TextType.BULLETS:
        return GoogleFonts.openSans(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        );
      default:
        return GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        );
    }
  }
}
