import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appAssets/appAssets.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/containerWidget/containerWidget.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GradiantColor(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppAssets.mainLogoImage),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                TextWidget(text: "Rehman Khan", color: AppColors.whiteColor, fontsize: 18,
                    fontweight: FontWeight.w600),
                TextWidget(text: "rehmankh741@gmial.com", color: Colors.grey, fontsize: 14,
                    fontweight: FontWeight.w500),
              ],),
              SizedBox(width: 25,),
              Icon(Icons.notifications,color: AppColors.whiteColor,size: 30,),
            ],),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextWidget(text: "Group task", color: AppColors.whiteColor, fontsize: 16,
                fontweight: FontWeight.w400),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Container( height: 110,width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(10)
                  ),child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      TextWidget(text: "Design Meeting", color: AppColors.blackColor, fontsize: 14,
                          fontweight: FontWeight.w500),
                      TextWidget(text: "Tomorrow | 10:30pm", color: Colors.grey, fontsize: 10,
                          fontweight: FontWeight.w400),
                        SizedBox(height: 16,),
                        Image.asset(AppAssets.groupCircleImage),
                    ],),
                  ),
                ),
                Container( height: 110,width: 200,
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10)
                  ),child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(text: "Project Meeting", color: AppColors.blackColor, fontsize: 14,
                            fontweight: FontWeight.w500),
                        TextWidget(text: "Thursday | 10:30pm", color: Colors.grey, fontsize: 10,
                            fontweight: FontWeight.w400),
                        SizedBox(height: 16,),
                        Image.asset(AppAssets.groupCircleImage),
                      ],),
                  ),
                )
              ],)
          ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget(text: "Incomplete Tasks", color: AppColors.whiteColor, fontsize: 14,
                  fontweight: FontWeight.w500),
            ),
            SizedBox(height: 20,),
            ContainerWidget(),
            SizedBox(height: 15,),
            ContainerWidget(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget(text: "Complte Tasks", color: AppColors.whiteColor, fontsize: 14,
                  fontweight: FontWeight.w500),
            ),
            SizedBox(height: 20,),
            Container( height: 60,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(AppAssets.iconCheckMarkImage),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(text: "Client meeting", color: AppColors.blackColor, fontsize: 14,
                            fontweight: FontWeight.w500),
                        TextWidget(text: "Tomorrow | 10:30pm", color: Colors.grey, fontsize: 10,
                            fontweight: FontWeight.w400),
                      ],),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.turquoiseColor,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container( height: 60,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Image.asset(AppAssets.iconCheckMarkImage),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(text: "Client meeting", color: AppColors.blackColor, fontsize: 14,
                            fontweight: FontWeight.w500),
                        TextWidget(text: "Tomorrow | 10:30pm", color: Colors.grey, fontsize: 10,
                            fontweight: FontWeight.w400),
                      ],),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,color: AppColors.turquoiseColor,),
                  ],
                ),
              ),
            ),
        ],))
      ],),
    );
  }
}
