
import 'package:code_cafe/Firebase/Services/auth_service.dart';
import 'package:code_cafe/Utils/theme/custom_theme/textTheme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {

  final String? photoUrl;
  final String? displayName;
  final String? email;

  const  ProfileScreen({   super.key,   required this.photoUrl,   required this.displayName ,required this.email });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          CafeTextTheme().text(
                              text: "Profile", tStyle: CafeTextTheme().tittleText())
                        ],
                      ),
                      const Icon(color: Colors.white, Iconsax.edit_24)
                    ],
                  ),
                ),

                Container(
                  height: 100,
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                       
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:Image.network(photoUrl!).image
                        )
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CafeTextTheme().text(
                              text: displayName!,
                              tStyle: CafeTextTheme().subTittleText()),
                          CafeTextTheme().text(
                              text: "Flutter Developer",
                              tStyle: CafeTextTheme().bodyText())
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.mail_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            CafeTextTheme().text(
                                text: "0312-7377494",
                                tStyle: CafeTextTheme().bodyText())
                          ]),
                          CafeTextTheme().text(
                              text: email!,
                              tStyle: CafeTextTheme().bodyText())
                        ],
                      )
                    ],
                  ),
                ),


                // Row(
                //   mainAxisAlignment:MainAxisAlignment.start,
                //   children: [
                //     const Icon(
                //       Icons.ac_unit_rounded,
                //       color: Colors.white,
                //     ),
                //     SizedBox(width: 20,),
                //     Text("234234",style: CafeTextTheme().bodyText(),)
                //   ],
                // )
               


                // Container(
                //   margin: const EdgeInsets.only(top: 50),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       InkWell(
                //           onTap: () {
                //             AuthService().SignOut(context: context);
                //           },
                //           child: CafeText().text(
                //               text: "Logout", tStyle: CafeText().bodyText())),
                //       const SizedBox(
                //         width: 20,
                //       ),
                //       IconButton(
                //         color: Colors.white,
                //         icon: const Icon(Iconsax.logout),
                //         onPressed: () {
                //           AuthService().SignOut(context: context);
                //         },
                //       )
                //     ],
                //   ),
                // )
                

              ],
            )
          ],
        ),
      ),
    );
  }
}
