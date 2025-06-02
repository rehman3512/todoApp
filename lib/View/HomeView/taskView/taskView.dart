import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
import 'package:todoapp/Controller/Widgets/containerWidget/containerWidget.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/Controller/Widgets/textWidget/textWidget.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
        context:context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height/1.8,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
              ],),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GradiantColor(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(height: 40,width: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.navyBlueColor
                  ),child: Center(
                    child:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(
                        color: AppColors.whiteColor, fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search by task title",
                        hintStyle: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: Icon(Icons.search,color: Colors.grey,)
                      ),
                    ),
                    )
                  ),
                  ),
                  SizedBox(width: 10,),
                  Container(height: 40,width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.navyBlueColor
                    ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Icon(Icons.sort,color: Colors.grey),
                        SizedBox(width: 5,),
                        TextWidget(text: "Sort By:", color: AppColors.whiteColor, fontsize: 12,
                            fontweight: FontWeight.w400),
                        SizedBox(width: 5,),
                        Icon(Icons.keyboard_arrow_down,color: Colors.grey,),
                      ],)
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget(text: "Tasks List", color: AppColors.whiteColor,
                  fontsize: 16, fontweight: FontWeight.w400),
            ),
            SizedBox(height: 30,),
            InkWell( onTap: (){
              showBottomSheet(context);
            },
                child: ContainerWidget()),
            SizedBox(height: 30,),
            ContainerWidget(),
            SizedBox(height: 30,),
            ContainerWidget(),
            SizedBox(height: 30,),
            ContainerWidget(),
          ],
        ))
      ],),
    );
  }
}
