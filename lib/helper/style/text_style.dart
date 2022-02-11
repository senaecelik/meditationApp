import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StringStyle {
  static final TextStyle headText = GoogleFonts.roboto(
      fontWeight: FontWeight.w700, fontSize: 16, letterSpacing: 3);

  static final TextStyle hText = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 30,
      color: const Color.fromRGBO(63, 65, 78, 1));

  static final TextStyle subText = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: const Color.fromRGBO(161, 164, 178, 1),
  );

  static final TextStyle subWhiteText = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: Colors.white,
  );
  static final TextStyle buttonText = GoogleFonts.roboto(
      fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white);

  static final TextStyle sub1Text = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: const Color.fromRGBO(142, 151, 253, 1));

  static final TextStyle headline1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: 28,
    color: const Color.fromRGBO(63, 65, 78, 1),
  );
  static final TextStyle headline2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 28,
    color: const Color.fromRGBO(63, 65, 78, 1),
  );

  static final TextStyle headline3 = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 20,
    color: const Color.fromRGBO(63, 65, 78, 1),
  );
  static final TextStyle cardText = GoogleFonts.roboto(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: const Color.fromRGBO(63, 65, 78, 1),
  );
}
