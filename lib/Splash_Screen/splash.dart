
// import 'package:code_cafe/Authentication_Screens/login.dart';
import 'package:code_cafe/Authentication_Screens/login.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget{
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> {
      @override
    void initState() {
      super.initState();
      reDirect();
  }

  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.black,
            body:
              
               Center(child: Image.asset(
                 height:200,
                 width: 200,
                'assets/images/image_dark.png'))
            
    );
    
  }
   Future<void> reDirect() async{
             await Future.delayed(const Duration(seconds: 3));
             Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const LoginScreen()));
   }
}
 