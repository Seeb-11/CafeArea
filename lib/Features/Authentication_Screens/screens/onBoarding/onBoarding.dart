
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/Widgets/Next_button.dart';
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/Widgets/dot_navigation.dart';
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/Widgets/onBoarding_page.dart';
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/Widgets/skip_button.dart';
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/onBoarding_controller.dart';
import 'package:code_cafe/Utils/constants/image_string.dart';
import 'package:code_cafe/Utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
     

    //  Getting the instance of Onboarding Controller here
     final controller = Get.put(OnBoardingController());          
                
    return Scaffold(
      body: Stack(
               children: [
                PageView(
   //Assigning the page controller to page View to know ,which is the current page index at screen(and Hoe many pages we have)
                  controller: controller.pageController,
  // Getting the index 
                   onPageChanged:controller.updatePageIndicator,
                  children:   [
                      OnboardingPage(
                      
                        image:CafeImages.onBoardingImage1,
                        tittle:CafeTexts.onBoardingTittle1, 
                        subTittle:CafeTexts.onBoardingSubTittle1,),
                      OnboardingPage(
                        image:CafeImages.onBoardingImage2,
                        tittle:CafeTexts.onBoardingTittle2, 
                        subTittle:CafeTexts.onBoardingSubTittle2,),
                      OnboardingPage(
                        image:CafeImages.onBoardingImage3,
                        tittle:CafeTexts.onBoardingTittle3, 
                        subTittle:CafeTexts.onBoardingSubTittle3,),
                  ],
                ),
              // Skip button
               const SkipButton(),

              // Dot Navigation
              const DotNavigation(),
              // circular button
             const NextButton(
             )


               ],
                
      ),
    );
  }
}