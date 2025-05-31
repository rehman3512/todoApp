import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/Controller/Widgets/appAssets/appAssets.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';
import 'package:todoapp/View/StartView/onboardingView/onboardingView.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      // Navigator.push(context, MaterialPageRoute(
      //     builder: (context)=>OnboardingView()));
      Get.to(()=>OnboardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GradiantColor(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120,),
            Image.asset(AppAssets.whiteCheckMarkImage),
            SizedBox(height: 30,),
            Text("DO IT",style: GoogleFonts.darumadropOne(
              fontSize: 36,fontWeight: FontWeight.w400,
              color: AppColors.whiteColor
            ),),
            Spacer(),
            TextWidget(text: "v 1.0.0", color: AppColors.whiteColor, fontsize: 20,
                fontweight: FontWeight.w500),
            SizedBox(height: 100,),
        ],))
      ],)
    );
  }
}
