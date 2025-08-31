import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController{
  var userId="".obs;
  var username="".obs;
  var useremail="".obs;


  insertUserData()
  async
  {
    try{
      await FirebaseFirestore.instance.collection("UserData").add({
        "userId": userId.value,
        "username": username.value,
        "userEmail": useremail.value,
      });

    }
    catch(error){

    }
  }

  getUserId()
  async{
    userId.value= await FirebaseAuth.instance.currentUser!.uid;
    username.value= await FirebaseAuth.instance.currentUser!.email??"";
  }

  fetchUserData()
  async{
    try{
      final data = await FirebaseFirestore.instance.collection
        ("userData").where(userId, isEqualTo: userId.value).get();

      // if(data.docs.isNotEmpty)
      // {
        final UserData = data.docs.first.data();
        username.value = UserData["username"];
        useremail.value = UserData["useremail"];
      // }
    }catch(error){

    }
  }

}