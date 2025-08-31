import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class profileController extends GetxController {
  var userId = "".obs;
  var username = "".obs;
  var useremail = "".obs;
  var userphone = "".obs;
  var usergender = "".obs;
  var userage = "".obs;

  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  inserUserData() async {
    try {
      await FirebaseFirestore.instance.collection("userData").add({
        "userId": userId.value,
        "username": username.value,
        "useremail": useremail.value,
        "userphone": userphone.value,
        "usergender": usergender.value,
        "userage": userage.value,
      });
    } catch (error) {
      // isLoading.value=false;
    }
  }

  getUserId() async {
    userId.value = await FirebaseAuth.instance.currentUser!.uid;
    useremail.value = await FirebaseAuth.instance.currentUser!.email ?? "";
  }

  fetchUserData() async {
    try {
      print("-------------fetch userData function calling");
      final data = await FirebaseFirestore.instance
          .collection("UserData")
          .where("userId", isEqualTo: userId.value)
          .get();
      print("--------$data");
      if (data.docs.isNotEmpty) {
        final userData = data.docs.first.data();
        username.value = userData["username"];
        print("---------${username.value}");
        useremail.value = userData["useremail"];
        userage.value = userData["userage"];
        usergender.value = userData["usergender"];
        userphone.value = userData["userphone"];
      }
    } catch (error) {
      print("Error fetching userdata: $error");
    }
  }

  updateUserData() async {
    try {
      await FirebaseFirestore.instance.collection("userData").doc(userId.value).update({
        "userage": ageController.text,
        "userphone": phoneController.text,
        "usergender": genderController.text,
      });
    } catch (error) {
      print("Error updating userdata: $error");
    }
  }

}
