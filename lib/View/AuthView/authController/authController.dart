import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todoapp/Controller/Widgets/showMessage/showMessage.dart';
import 'package:todoapp/View/AuthView/signInView/signInView.dart';
import 'package:todoapp/View/HomeView/Profile/profileController.dart';
import 'package:todoapp/View/HomeView/homeView.dart';


class  AuthController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  profileController ProfileController=Get.put(profileController());

  var isLoading= false.obs;

  register()async{
    isLoading.value=true;
    try{ await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
    );

    await ProfileController.getUserId();
    ProfileController.username.value=userController.text;
    print("username: ${ProfileController.username.value}");
    print("username: ${ProfileController.userId.value}");
    print("username: ${ProfileController.useremail.value}");
    await ProfileController.inserUserData();
    ShowMessage.successMessage("Success","Register Successfully");
    isLoading.value=false;
    Get.to(SignInView());
    userController.clear();
    emailController.clear();
    passwordController.clear();
    }catch(error){
      isLoading.value=false;
      ShowMessage.errorMessage("Error",error.toString());
    }
  }
  Login()async{
    isLoading.value=true;
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim()).then((value){
          isLoading.value=false;
          Get.to(()=>HomeView());
    }).onError((error,handleError){
      isLoading.value=false;
    });
  }

  signout()async{
    await FirebaseAuth.instance.signOut();
    Get.to(()=> SignInView());
  }
}