import 'package:flutter/material.dart';
import 'package:todoapp/Controller/Widgets/appAssets/appAssets.dart';
import 'package:todoapp/Controller/Widgets/gradiantcolor/gradiantcolor.dart';
import 'package:todoapp/View/StartView/onboardingView/testView/testView.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GradiantColor(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(children: [
                TestView(img: AppAssets.clipBoardImage, text: "Plan your tasks to do, that \n"
                    " way you’ll stay organized \n and you won’t skip any",
                  nextimg: AppAssets.nextButtonImage,),
                TestView(img: AppAssets.calenderImage, text: "Make a full schedule for \n "
                    "the whole week and stay \n organized and productive \n all days",
                  nextimg: AppAssets.nextButtonImage,),
                TestView(img: AppAssets.settingImage, text: "create a team task, invite \n "
                    "people and manage your \n work together",nextimg: AppAssets.nextButtonImage,),
                TestView(img: AppAssets.shieldImage, text: "You informations are \n secure with us",
                  nextimg: AppAssets.circlecheckmarkImage,)
              ],),
            )
          ],
        ))
      ],),
    );
  }
}
