import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowMessage{
  static successMessage(String title,String message){
    Get.snackbar(title,message);
  }
  static errorMessage(String title,String message){
    Get.snackbar(title,message,
    backgroundColor: Colors.red,snackPosition: SnackPosition.TOP);
  }

}