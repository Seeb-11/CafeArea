
import 'package:code_cafe/Authentication_Screens/login.dart';

import 'package:code_cafe/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


// import 'package:quick_actions/quick_actions.dart'; 
// import 'package:code_cafe/Authentication_Screens/signUp.dart';

main() async{
    WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform);



  
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

     
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe Area',
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Colors.white
        )
   
      ),
      home: const LoginScreen()
    );
  }
}


