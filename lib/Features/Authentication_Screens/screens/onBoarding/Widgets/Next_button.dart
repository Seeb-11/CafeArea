import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/onBoarding_controller.dart';
import 'package:code_cafe/Utils/constants/colors.dart';
import 'package:code_cafe/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NextButton extends StatelessWidget {

  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;
    return Positioned(
                top: 680,
                left: 260,
                right: CafeSizes.defaultSpace,
                child: ElevatedButton(onPressed: (){
                         controller.nextPage();
                },
                style:ElevatedButton.styleFrom(shape:  const CircleBorder(),backgroundColor:CafeColors.primaryColor),
                child: const Icon(
                  color: Colors.white,
                  Iconsax.arrow_right_3),
                ),
              );
  }
}