import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final textFieldStyle = GoogleFonts.roboto(
  color: Color(0xFFE18D96),
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

final boxDecorationStyle = BoxDecoration(
    color: Color(0xff323232),
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(color: Colors.black26, blurRadius: 10.0, offset: Offset(0, 2))
    ]);
