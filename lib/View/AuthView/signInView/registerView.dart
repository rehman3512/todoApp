import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/View/AuthView/signInView/profileController.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  RegisterController obj=Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFormField(
          controller: obj.nameController,
        ),
        SizedBox(height: 20,),
        TextFormField(
          controller: obj.emailController,
        ),
        SizedBox(height: 20,),
        TextFormField(
          controller: obj.passwordController,
        ),
        SizedBox(height: 40,),
        Obx((){
          return obj.isLoading==true?CircularProgressIndicator():
              FloatingActionButton(onPressed: (){obj.register();});
        })
      ],),
    );
  }
}



class RegisterController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  var isLoading=false.obs;

  // register()
  // async
  // {
  //   isLoading.value=true;
  //   await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim()).then((onValue)
  //   async
  //   {
  //     String userId = await FirebaseAuth.instance.currentUser!.uid;
  //     await FirebaseFirestore.instance.collection("userData").add({
  //       "userId": userId,
  //       "email": emailController.text.trim(),
  //       "name": nameController.text
  //
  //     });
  //   }).onError((error,handleError){
  //     isLoading.value=false;
  //   });
  // }

  ProfileController profileController = ProfileController();

  register()
  async
  {
    try{
      isLoading.value=true;
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text);
      profileController.getUserId();
      profileController.username.value=nameController.text;
      profileController.insertUserData();
    }
    catch(error){
      isLoading.value=false;
    }
  }

}