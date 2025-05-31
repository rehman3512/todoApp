import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appAssets/appAssets.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';

class TestView extends StatelessWidget {
  final String img;
  final String text;
  final String nextimg;
  const TestView({super.key,required this.img,required this.text,
  required this.nextimg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GradiantColor(child: Column(children: [
          SizedBox(height: 80,),
          Image(image: AssetImage(img)),
          Spacer(),
          TextWidget(text: text, color: AppColors.whiteColor, fontsize: 20,
              fontweight: FontWeight.w500),
          SizedBox(height: 40,),
          Row( mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 40,),
            Image.asset(AppAssets.sliderImage),
            SizedBox(width: 50,),
            Image.asset(nextimg)
          ],),
          SizedBox(height: 40,)
        ],))
      ],),
    );
  }
}
