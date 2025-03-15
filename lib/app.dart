
import 'package:code_cafe/Features/Authentication_Screens/screens/login/login.dart';
import 'package:code_cafe/Features/Authentication_Screens/screens/onBoarding/onBoarding.dart';
import 'package:code_cafe/Utils/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

     
    return GetMaterialApp(  
      debugShowCheckedModeBanner: false,
      title: 'Cafe Area',
      themeMode: ThemeMode.system,
          // BY DEFAULT THEME IS LIGHT
      theme:CafeAppTheme().lightTheme,
      darkTheme: CafeAppTheme().darkTheme,
     home: const OnboardingScreen()

    );
   
  }
}

