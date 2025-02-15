import 'package:code_cafe/Firebase/Services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
       resizeToAvoidBottomInset: false,
       
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding:const  EdgeInsets.all(20),
                 child: Stack(
                  children: [
                                 Column(
                                   children: [
                                    Container(
                                        margin: const EdgeInsets.only(top: 10),
                                      child: const Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Column(
                                                                  children: [
                                    
                                                                    Text("Profile",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w600)),
                                                                  ],
                                                                ),
                                                                Icon(
                                                                  color: Colors.white,
                                                                  Iconsax.user)
                                                            
                                                              ],
                                                            ),
                                    ),
                            
                                Container(
                                  margin: const EdgeInsets.only(top: 50),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () { 
                                          AuthService().SignOut(context: context);
                                          
                                        },
                                        child: const Text("Logout",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.normal))),
                                           const SizedBox(width:20,),
                                       IconButton(
                                        color: Colors.white,
                                       icon: const Icon(Iconsax.logout),
                                         onPressed: () { 
                                          AuthService().SignOut(context: context);
                                          

                                         }, )
                                    ],
                                  ),
                                )



                                   ],
                                 )

                 
                  ],
                 ),
      ),
  );
  }
}