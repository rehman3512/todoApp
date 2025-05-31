import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  const TextFormFieldWidget({super.key,required this.icon,
  required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height: 35,
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: text,
        hintStyle: GoogleFonts.poppins(
          color: Colors.blueGrey,
          fontSize: 10,
          fontWeight: FontWeight.w400
        ),
      ),
    ),);
  }
}
