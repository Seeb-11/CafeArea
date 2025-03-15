import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/onBoarding_controller.dart';
import 'package:code_cafe/Utils/constants/colors.dart';
import 'package:code_cafe/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {

    final controller =OnBoardingController.instance;

    return Positioned(
                top:700,
                left: CafeSizes.defaultSpace,
                child: SmoothPageIndicator(
                  
                  controller:controller.pageController,
                  //Trigger when somene press the dot then move to the next page
                   onDotClicked: controller.dotNavigationClick,
                   count: 3,effect: const ExpandingDotsEffect(activeDotColor: CafeColors.primaryColor,dotHeight: 6),));
  }
}