import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontweight;
  final double fontsize;

  const TextWidget({super.key,required this .text,required this.color,
    required this.fontsize,required this.fontweight
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(color: color,fontSize: fontsize,
        fontWeight: fontweight),);
  }
}
