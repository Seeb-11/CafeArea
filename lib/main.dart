
import 'package:code_cafe/app.dart';

import 'package:code_cafe/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


// import 'package:quick_actions/quick_actions.dart'; 
// import 'package:code_cafe/Authentication_Screens/signUp.dart';

main() async{
    WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform); 
  runApp(const App());
}



