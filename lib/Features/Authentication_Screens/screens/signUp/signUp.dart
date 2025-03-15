
import 'package:code_cafe/Features/Authentication_Screens/screens/signUp/verify_email.dart';
import 'package:code_cafe/Firebase/Services/auth_service.dart';
import 'package:code_cafe/Utils/constants/colors.dart';
import 'package:code_cafe/Utils/constants/helper_function.dart';
import 'package:code_cafe/Utils/constants/sizes.dart';
import 'package:code_cafe/Utils/theme/custom_theme/textTheme.dart';
import 'package:code_cafe/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firsNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const Color myColor =CafeColors.primaryColor;

    bool  darkTheme =CafeHelper.isDarkMode(context);
    //Thene is dark theme

    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.black,
         foregroundColor: Colors.white,
       
      ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Container(
                child: Text("Let's create your account",
                    style: CafeTextTheme().tittleText()),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Form(
                    child: Column(
                 
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // ignore: avoid_unnecessary_containers

                        TextFormField(
                        controller: userNameController,
                        decoration: const InputDecoration(
                          labelText: "Full Name",
                          suffixIcon: Icon(Icons.person)
                        ),
                        
                       ),
                     


                    const SizedBox(height: 20),

                     TextFormField(
                        controller: userNameController,
                        decoration: const InputDecoration(
                          labelText: "Username",
                          suffixIcon: Icon(Icons.person)
                        ),
                        
                       ),


                            
                    const SizedBox(height: 20),

                   
                    const SizedBox(height: 20),

                    // CafeTextField().textFieldForPNumber(
                    //     contlr: phoneNumberController,
                    //     fieldStyle: const TextStyle(color: Colors.white),
                    //     curColor: Colors.white,
                    //     decor: CafeTextField().inputDecoration(
                    //         labelTxt: "Phone Number",
                    //         preIcon:
                    //             const Icon(Icons.phone, color: Colors.white)),
                    //     keyboard: TextInputType.number,
                    //     obseCureText: false),
                     TextFormField(
                        controller: phoneNumberController,
                        decoration: const InputDecoration(
                          labelText: "Phone Number",
                          suffixIcon: Icon(Icons.phone)
                        ),
                        
                       ),

                    const SizedBox(height: 20),

                    // CafeTextField().textFieldForPNumber(
                    //     contlr: passController,
                    //     fieldStyle: const TextStyle(
                    //       color: Colors.white,
                    //     ),
                    //     curColor: Colors.white,
                    //     decor: CafeTextField().inputDecoration(
                    //         labelTxt: "Password",
                    //         preIcon: const Icon(
                    //           Icons.password,
                    //           color: Colors.white,
                    //         )),
                    //     keyboard: TextInputType.visiblePassword,
                    //     obseCureText: true),\
                     TextFormField(
                        controller: passController,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          suffixIcon: Icon(Icons.email_outlined)
                        ),
                        
                       ),

                    const SizedBox(
                      height: 20,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                        width: 335,
                        height: 50,
                        child:

                             ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const WidgetStatePropertyAll(myColor),
                                  shape:
                                      WidgetStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                              onPressed: () {
                                // AuthService().signUp(
                                //     email: emailController.text,
                                //     password: passController.text,
                                //     context: context);
                                Get.to(()=>const VerifyEmailScreen());
                              },
                              child: const
                              Text(
                                "Create Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),

                            ),
                    ),
                          

                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "-----or Sign In With-----",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
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
                              onPressed: () {
                                AuthService().signInWithGoogle(context);
                                
                                     


                              },
                              icon: const Image(
                                  height: 24,
                                  width: 24,
                                  image:
                                      AssetImage('assets/images/google.png'))),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: IconButton(
                              onPressed: () {
                                AuthService().signInWithFacebook(context);
                              },
                              icon: const Image(
                                  height: 24,
                                  width: 24,
                                  image: AssetImage(
                                      'assets/images/facebook.png'))),
                        )
                      ],
                    )
                  ],
                )),
              )
            ],
          ),
        ));
  }
}
