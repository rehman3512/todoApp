import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appColors/AppColors.dart';
class GradiantColor extends StatelessWidget {
  final Widget child;
  const GradiantColor({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              AppColors.blueColor,
              AppColors.navyBlueColor,
            ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),child: child,
    );
  }
}
