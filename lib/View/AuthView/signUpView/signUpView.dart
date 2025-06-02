import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/Controller/Widgets/alternativeButton/alternativeButton.dart';
import 'package:todoapp/Controller/Widgets/appAssets/appAssets.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/Controller/Widgets/textFormFieldWidget/textFormFieldWidget.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';
import 'package:todoapp/View/AuthView/signInView/signInView.dart';
import 'package:todoapp/View/HomeView/homeView.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  // TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradiantColor(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Image.asset(AppAssets.whiteCheckMarkImage)
              ),
              SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextWidget(text: "Welcome to Do It", color: AppColors.whiteColor,
                      fontsize: 25, fontweight: FontWeight.w500),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextWidget(text: "create an account and join us now!", color: AppColors.whiteColor,
                      fontsize: 18, fontweight: FontWeight.w500),
                ),
                // SizedBox(height: 30,),
                // TextFormFieldWidget(controller: userController,icon: Icon(Icons.person,color: AppColors.blackColor,), text: "Full Name"),
                SizedBox(height: 30,),
                TextFormFieldWidget(controller: emailController,icon: Icon(Icons.email,color: AppColors.blackColor), text: "E-mail"),
                SizedBox(height: 30,),
                TextFormFieldWidget(controller: passwordController,icon: Icon(Icons.lock,
                    color: AppColors.blackColor), text: "Password"),
                SizedBox(height: 40,),
                GestureDetector( onTap: () async{
                  isloading = true;
                  setState(() {

                  });
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailController.text.trim(),
                      password: passwordController.text).then((onValue){
                        isloading = false;
                        setState(() {

                        });
                        Get.to(()=>HomeView());
                  }).onError((error,handlerror){
                    isloading=false;
                    setState(() {

                    });
                    Get.snackbar("Error", error.toString());
                  });
                }, child: Alternativebutton(text: "sign up")),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(text: "Already have an account?", color: AppColors.whiteColor,
                        fontsize: 14, fontweight: FontWeight.w500),
                    SizedBox(width: 5,),
                    TextButton( onPressed: (){
                      Get.to(()=>SignInView());
                    }, child: TextWidget(text: "sign in", color: AppColors.turquoiseColor,
                          fontsize: 14, fontweight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: [
                    TextWidget(text: "sign up with:", color: AppColors.whiteColor, fontsize: 14,
                        fontweight: FontWeight.w400),
                    SizedBox(width: 10),
                    Image.asset(AppAssets.googleButtonImage),
                    SizedBox(width: 10,),
                    Image.asset(AppAssets.iphoneButtonImage),
                  ],),
                )
            ],),
          ))
        ],
      ),
    );
  }
}
