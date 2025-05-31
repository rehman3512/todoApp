import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  const TextFormFieldWidget({super.key,required this.icon,
  required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height: 40,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(5)
    ),
    child: TextFormField(
      style: TextStyle(
        color: AppColors.blackColor,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: text,
        hintStyle: GoogleFonts.poppins(
          color: Colors.blueGrey,
          fontSize: 15,
          fontWeight: FontWeight.w400
        ),
      ),
    ),);
  }
}
