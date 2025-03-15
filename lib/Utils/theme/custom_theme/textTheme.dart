import 'package:code_cafe/Utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CafeTextTheme{
  
  //  FOR TEXT
  Text text({required String text, required TextStyle tStyle}) {
    return Text(text, style: tStyle);
  }

  TextStyle tittleText() {
    return const TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
  }
    TextStyle subTittleText() {
    return const TextStyle(
        color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
  }
    TextStyle smallSubTittleText() {
    return const TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400);
  }
  // FOR BODY TEXT

  TextStyle bodyText() {
    return const TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
  }

  // FOR BUTTON TEXT
  TextStyle buttonText() {
    return const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white);
  }




                                //  GOOD APPROACH

  static const  lightTextTheme =  TextTheme(
    headlineLarge:  TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,color: Colors.black),
    headlineMedium: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600,color: Colors.black), 
    headlineSmall:  TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.black),

    titleLarge:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,  color: Colors.black),  
    titleMedium:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,  color: Colors.black),  
    titleSmall:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400,  color: Colors.black),  

    bodyLarge:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,  color: Colors.black), 
    bodyMedium:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,  color: Colors.black),  
    bodySmall:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,  color: Colors.black),  

    labelLarge:  TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal,  color: Colors.black),  
    labelMedium:  TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal,  color: Colors.black),  


     displayLarge:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,  color: Colors.white,decoration: TextDecoration.underline,decorationColor: Colors.white), 
  ); 

  static const  darkTextTheme = TextTheme(
    headlineLarge:  TextStyle(fontSize: 32.0,fontWeight: FontWeight.bold,color: Colors.white),
    headlineMedium: TextStyle(fontSize: 24.0,fontWeight: FontWeight.w600,color: Colors.white), 
    headlineSmall:  TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: Colors.white),

    titleLarge:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,  color: Colors.white),  
    titleMedium:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500,  color: Colors.white),  
    titleSmall:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400,  color: Colors.white),  

    bodyLarge:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,  color: Colors.white), 
    bodyMedium:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal,  color: Colors.white),  
    bodySmall:  TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500,  color: Colors.white),  

    labelLarge:  TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal,  color: Colors.white),  
    labelMedium:  TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal,  color: Colors.white),  
  ); 


}
