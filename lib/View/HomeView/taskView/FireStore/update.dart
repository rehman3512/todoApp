import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';

class UpdateView extends StatefulWidget {
  final String docid;
  const UpdateView({super.key,required this.docid});

  @override
  State<UpdateView> createState() => _UpdateViewState();
}

class _UpdateViewState extends State<UpdateView> {
  TextEditingController  titleController = TextEditingController();
  TextEditingController  descriptionController = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          children: [
            Container(height: 45,width: 280,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                border: Border.all(color: AppColors.blueColor),
                borderRadius: BorderRadius.circular(8),
              ),child: TextFormField(
                style: TextStyle(color: AppColors.whiteColor,fontSize: 10,
                    fontWeight: FontWeight.w400),
                controller: titleController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enetr your title",
                  hintStyle: TextStyle(color: AppColors.whiteColor,fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(height: 45,width: 280,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                border: Border.all(color: AppColors.blueColor),
                borderRadius: BorderRadius.circular(8),
              ),child: TextFormField(
                style: TextStyle(color: AppColors.whiteColor,fontSize: 10,
                    fontWeight: FontWeight.w400),
                controller: descriptionController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enetr your description",
                  hintStyle: TextStyle(color: AppColors.whiteColor,fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 30,),
            isloading? CircularProgressIndicator():
            FloatingActionButton(onPressed: () async{
              isloading = true;
              setState(() {

              });
              await FirebaseFirestore.instance.collection("insert").doc(widget.docid).update({
                "title": titleController.text,
                "description": descriptionController.text,
              }).then((onValue){
                isloading= false;
                setState(() {

                });
              }).onError((handleError,error){
                isloading = false;
                setState(() {

                });
                Get.snackbar("Error", handleError.toString());
              },
              );
            },backgroundColor: AppColors.blueColor,
            )
          ],),
      ),
    );
  }
}
