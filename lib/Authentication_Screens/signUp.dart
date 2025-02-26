
import 'package:code_cafe/Common/Widdgets/text.dart';
import 'package:code_cafe/Firebase/Services/auth_service.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
        
           const Color buttonFillCol = Color(0xffBA7943);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
               Container(
                margin: const EdgeInsets.only(top: 100),
                 child:  Text("Let's create your account",style: CafeText().HeadLine_Text()
                 
                 ),
               ),
          
               Container(
                padding: const EdgeInsets.only(top:150 ),
                 child: Form(child: Column(
                  children: [
                      Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    
                   // ignore: avoid_unnecessary_containers
                   Container(
                    width: 155,
                    child: TextField(
                            // controller: ,
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white70,
                            decoration:CafeText().Input_dec(labelTxt: "First Name", hintTxt: "First Name", preIcon:const  Icon(
                              Icons.person,
                                  color: Colors.white,
                            ))
                          ),
                   ),
                 
                            // ignore: avoid_unnecessary_containers
                            Container(
                              width: 155,
                              child: const TextField(
                              // controller: ,
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white70,
                              decoration: InputDecoration(
                                  labelText: 'Last Name',
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
                                  hintText: "Last Name",
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  )),
                                                      ),                         
                            ),
                                
                  ],
                 ),
                 const SizedBox(height: 20),
                     TextField(
                     controller: userNameController,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white70,
                    decoration: const InputDecoration(
                        labelText: 'Username',
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
                        hintText: "Username",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        )),
                                            ),
                                            
                 const SizedBox(height: 20),
                     TextField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white70,
                    decoration: const InputDecoration(
                        labelText: 'E-Mail',
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
                        hintText: "E-Mail",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        )),
                                            ),
                                            
                 const SizedBox(height: 20),
                    const TextField(
                      keyboardType:TextInputType.number,
                    // controller: ,
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white70,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
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
                        hintText: "Phone Number",
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.white,
                        )),
                                            ),
                   const SizedBox(height: 20),
                     TextField(
                      obscureText: true,
                    controller:passController ,
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white70,
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
                          Icons.password,
                          color: Colors.white,
                        )),
                                            ),

                         const SizedBox(height: 20,),
                                            // ignore: sized_box_for_whitespace
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
                                             AuthService().signUp(
                                     email: emailController.text,
                                     password: passController.text, 
                                     context: context);
                              },
                             
                              
                                child: const Text(
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
               
                                            


                  ],
                 )
                 ),
               )
          ],
        ),
      )
    );
  }
}
