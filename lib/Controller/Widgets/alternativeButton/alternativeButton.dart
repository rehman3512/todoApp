import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';

class Alternativebutton extends StatelessWidget {
  final String text;
  const Alternativebutton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(height: 35,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: AppColors.skyBlueColor,
      borderRadius: BorderRadius.circular(10)
    ),child: Center(child: TextWidget(text: text, color: AppColors.whiteColor,
          fontsize: 18, fontweight: FontWeight.w500),),
    );
  }
}
