import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StringStyle {
  static StringStyle instance = StringStyle._init();

  StringStyle._init();
  final TextStyle headText = GoogleFonts.roboto(
      fontWeight: FontWeight.w700, fontSize: 16, letterSpacing: 3);
  final TextStyle hText = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 30,
      color: const Color.fromRGBO(63, 65, 78, 1));

  final TextStyle subText = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: const Color.fromRGBO(161, 164, 178, 1),
  );

  final TextStyle subWhiteText = GoogleFonts.roboto(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: Colors.white,
  );
  final TextStyle buttonText = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.white,
  );

  final TextStyle sub1Text = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: const Color.fromRGBO(142, 151, 253, 1));
}
