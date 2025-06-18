import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/textFormFieldWidget/textFormFieldWidget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Firebase extends StatefulWidget {
  const Firebase({super.key});

  @override
  State<Firebase> createState() => _FirebaseState();
}

@override
class _FirebaseState extends State<Firebase> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          await FirebaseFirestore.instance.collection("insert").add({
            "title": titleController,
            "description": descriptionController,

          });
          titleController.clear();
          descriptionController.clear();
          setState(() {

          });
          setState(() {
            
          });
      },
      ),
      body: Column(children: [
        SizedBox(height: 20),
        Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormFieldWidget(
              icon: Icon(Icons.type_specimen_outlined),
              text: "Enter your title",
              controller: titleController),
        ),
        Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            border: Border.all(color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormFieldWidget(
              icon: Icon(Icons.type_specimen_outlined),
              text: "Enter your descripton",
              controller: descriptionController),
        )
      ]),
    );
  }
}
