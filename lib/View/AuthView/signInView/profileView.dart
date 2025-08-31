import 'package:flutter/material.dart';
import 'package:todoapp/View/AuthView/signInView/profileController.dart';
import 'package:get/get.dart';

class Profileview extends StatelessWidget {
  Profileview({super.key});
  ProfileController obj=Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    obj.getUserId();
    obj.fetchUserData();
    return Scaffold(
      body: Obx(()=>Column(
        children: [
          Text(obj.username.toString()),
          Text(obj.useremail.toString()),
        ],
      )),
    );
  }
}
