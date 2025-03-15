import 'package:flutter/material.dart';

class CafeTextFieldTheme{


 static const  darkInputDecoration =  InputDecorationTheme(
     border: OutlineInputBorder(
       borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10)),
     ),
     focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
              color: Colors.white70,
              width: 2,
            ),
     ),
     labelStyle: TextStyle(color: Colors.white),
     

   );

 static const   InputDecorationTheme lightInputDecoration = InputDecorationTheme(
     border: OutlineInputBorder(
       borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(10)),
     ),
     focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
              color: Colors.black38,
              width: 2,
            ),
     ),
     labelStyle: TextStyle(color: Colors.black)

   );
   
   
   
   }