// ignore_for_file: sized_box_for_whitespace
import 'dart:ffi';
import 'package:code_cafe/Features/Authentication_Screens/screens/signUp/signUp.dart';
import 'package:code_cafe/Features/Authentication_Screens/screens/Bottom_Navigation_Screens/home.dart';
import 'package:code_cafe/Firebase/Services/auth_service.dart';
import 'package:code_cafe/Utils/constants/colors.dart';
import 'package:code_cafe/Utils/constants/helper_function.dart';
import 'package:code_cafe/Utils/constants/image_string.dart';
import 'package:code_cafe/Utils/constants/text_string.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:status_alert/status_alert.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final  Dark =CafeHelper.isDarkMode(context);
    //Getting dark theme here

    const Color myColor =CafeColors.primaryColor;
  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [

            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                height: 140,
                width: 140,
                // color: Colors.amber,
                child: 
                
                  const Image(
                    image: AssetImage(CafeImages.darkAppLogo),
                  )
                    // image: AssetImage( Dark?CafeImages.darkAppLogo : CafeImages.lightAppLogo  ))
                    
              ),
            ),


            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(CafeTexts.loginTittle, style:Theme.of(context).textTheme.headlineMedium
                    
                    
                    
                    ),
                    Text(
                        CafeTexts.loginSubTittle,
                        style: Theme.of(context).textTheme.bodyMedium
                        ),


                    const SizedBox(
                      height: 20,
                    ),


                    Form(
                        child: Column(
                      children: [

                       TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email_outlined)
                        ),
                        
                       ),
                      
                    


                        const SizedBox(
                          height: 20,
                        ),

                       
                      

                         TextFormField(
                        controller: passController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: "Password",
                          suffixIcon: Icon(Iconsax.eye_slash)

                        ),
                        
                       ),


                      ],
                    )),

                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        Row(
                          children: [
                               Checkbox(value: true, onChanged: (value) {}),
                          const Text("Remember Me"),
                          ],
                        ),


                         TextButton(onPressed: (){}, child: const Text("Forgot Password?"))
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                        children: [
                        
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: (){
                               AuthService().SignIn(
                                      email: emailController.text,
                                      password: passController.text,
                                      context: context);
                      
                            }, child: const Text("Sign In")),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                      
                          SizedBox(
                            
                            width: double.infinity,
                            child: OutlinedButton(onPressed: (){
                             Get.to(() =>const SignUpScreen());
                      
                            }, child: const Text("Create Account")),
                          ),
                      
                        ],
                      ),
                  
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "-----or Sign In With-----",
                            style: Theme.of(context).textTheme.labelLarge
                                




                          ),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: IconButton(
                              onPressed: () async{
                                try{
                               final UserCredential? userCredential= await AuthService().signInWithGoogle(context);

                               if(context.mounted) {

                            
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(
                                  displayName:userCredential?.user?.displayName,photoURL: userCredential?.user!.photoURL
                                ),));
                              
                              

                                // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(
                                //   displayName:userCredential?.user?.displayName,photoUrl: userCredential?.user!.photoURL,email: userCredential?.user?.email, 
                                // ),));

                                // Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen(
                                //   // photoUrl: userCredential?.user!.photoURL,
                                // ),));
                                
                            

                               }

                                }catch(e){
                                  StatusAlert.show(
                                    context,
                                    duration: const Duration(seconds: 10),
                                    title: "User Authentication",
                                    subtitle: e.toString(),
                                    configuration:const  IconConfiguration(icon: Icons.close,color: Colors.red,),
                                    maxWidth: 360
                                  
                                  );

                                }


                              },
                              icon:  const Image(
                                  height: 24,
                                  width: 24,
                                  image:
                                      AssetImage(CafeImages.google)
                                      
                                      )
                                      
                                      ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: IconButton(
                              onPressed: () {
                                AuthService().signInWithFacebook(context
                                );
                              },
                              icon: const Image(
                                  height: 24,
                                  width: 24,
                                  image: AssetImage(
                                    CafeImages.facebook
                                      ))),
                        )
                      ],
                    )
                    
                  ]),

                  
            )
          ],
        ),
      ),
    );
  }
}
