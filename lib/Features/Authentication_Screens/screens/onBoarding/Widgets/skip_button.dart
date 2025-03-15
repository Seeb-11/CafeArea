
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/onBoarding_controller.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return  Positioned(
                top: 20,
                left: 300,
                child: TextButton(onPressed: (){
                                
                              controller.skipPage();   
                                  
                }, child:   Text('Skip',style:
                
                 Theme.of(context).textTheme.displayLarge),
                
                ),
              );
  }
}