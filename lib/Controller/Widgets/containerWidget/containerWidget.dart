import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container( height: 60,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(text: "Client meeting", color: AppColors.blackColor, fontsize: 14,
                    fontweight: FontWeight.w500),
                TextWidget(text: "Tomorrow | 10:30pm", color: Colors.grey, fontsize: 10,
                    fontweight: FontWeight.w400),
              ],),
            Spacer(),
            Icon(Icons.arrow_forward_ios,color: AppColors.turquoiseColor,),
          ],
        ),
      ),
    );
  }
}
