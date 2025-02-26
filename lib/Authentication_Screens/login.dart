// ignore_for_file: sized_box_for_whitespace
import 'package:code_cafe/Authentication_Screens/signUp.dart';
import 'package:code_cafe/Firebase/Services/auth_service.dart';



import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
    const Color buttonFillCol = Color(0xffBA7943);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
     
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Center(
              
              child: Container(
                height: 150,
                width: 150,
                child: const Image(
                    image: AssetImage('assets/images/image_dark.png')),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Discover unlimited choices and Unmatched convenience.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Form(
                        child: Column(
                      children: [
                        TextField(

                         controller: emailController,

                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white70,
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white70,
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              hintText: "Email",
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller:passController,

                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white70,
                          obscureText: true,
                          decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white70,
                                  width: 2,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              hintText: "Password",
                              prefixIcon: Icon(
                                Iconsax.password_check4,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "forgot password",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 335,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: const WidgetStatePropertyAll(
                                      buttonFillCol),
                                  shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                              onPressed: () {
                                          
                                          AuthService().SignIn(
                                            email: emailController.text, 
                                            password: passController.text,
                                             context: context);
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 335,
                          height: 50,
                          child: OutlinedButton(
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ));
                              },
                              child: const Text("Create Account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white))),
                        ),
                      ],
                    ),
                      const SizedBox(
                          height: 40,
                        ),
                     const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children:[ Text("-----or Sign In With-----",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                                           ),),]
                     ),
                     const SizedBox(
                          height: 20,
                        ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                         Container(
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:  BorderRadius.circular(100),
                          ),
                          child: IconButton(onPressed: (){
                             AuthService().signInWithGoogle();
                          }, icon: const Image(
                            height: 24,
                            width: 24,
                            image: AssetImage('assets/images/google.png'))),
                         ),
                           Container(
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:  BorderRadius.circular(100),
                          ),
                          child: IconButton(onPressed: (){
                                      AuthService().signInWithFacebook(context);
                          }, icon: const Image(
                            height: 24,
                            width: 24,
                            image: AssetImage('assets/images/facebook.png'))),
                         )
                     
                     ],
                     )


                  ]      
                  ),
                
            )
          ],
        ),
      ),
    );
  }
}
