import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/Controller/Widgets/alternativeButton/alternativeButton.dart';
import 'package:todoapp/Controller/Widgets/appAssets/appAssets.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/Controller/Widgets/textFormFieldWidget/textFormFieldWidget.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';
import 'package:todoapp/View/AuthView/signUpView/signUpView.dart';
import 'package:todoapp/View/HomeView/homeView.dart';

class SignInView extends StatefulWidget {
  SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradiantColor(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Align( alignment: Alignment.center,
                      child: Image.asset(AppAssets.whiteCheckMarkImage)),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextWidget(text: "Welcome Back to DO IT ", color: AppColors.whiteColor,
                        fontsize: 25, fontweight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextWidget(text: "Have an other productive day !", color: AppColors.whiteColor,
                        fontsize: 18, fontweight: FontWeight.w500),
                  ),
                  SizedBox(height: 30,),
                  TextFormFieldWidget(icon: Icon(Icons.email,color: AppColors.blackColor,),
                    text: "E-mail", controller: emailController,),
                  SizedBox(height: 30,),
                  TextFormFieldWidget(icon: Icon(Icons.lock,color: AppColors.blackColor,),
                      text: "Password",controller: passwordController,),
                  SizedBox(height: 15,),
                  ListTile(
                    trailing: TextButton( onPressed: (){},
                      child: TextWidget(text: "Forgot Password", color: AppColors.whiteColor,
                          fontsize: 14, fontweight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 15,),
                  isloading?CircularProgressIndicator():
                  GestureDetector( onTap: () async{
                    isloading = true;
                    setState(() {

                    });
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim())
                        .then((onValue){
                          isloading = false;
                          setState(() {

                          });
                          Get.to(()=>HomeView());
                          emailController.clear();
                          passwordController.clear();
                    }).onError((handleError,error){
                      isloading = false;
                      setState(() {

                      });
                      Get.snackbar("Error", handleError.toString());
                    });

                  }, child: Alternativebutton(text: "sign in")),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(text: "Don't have an account?", color: AppColors.whiteColor, fontsize: 14,
                          fontweight: FontWeight.w500),
                      SizedBox(width: 5,),
                      TextButton( onPressed: (){
                        Get.to(()=>SignUpView());
                      }, child: TextWidget(text: "sign up", color: AppColors.turquoiseColor, fontsize: 14,
                          fontweight: FontWeight.w500),
                      ),
                    ],),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      TextWidget(text: "sign in with:", color: AppColors.whiteColor, fontsize: 14,
                          fontweight: FontWeight.w400),
                      SizedBox(width: 10),
                      Image.asset(AppAssets.googleButtonImage),
                      SizedBox(width: 10,),
                      Image.asset(AppAssets.iphoneButtonImage),
                    ],),
                  )
                ],),
            ),
          ),
        ],
      ),
    );
  }
}

