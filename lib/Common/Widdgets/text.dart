import 'package:flutter/material.dart';

class CafeText {
  Button_Text_style() {
    TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
        color: Colors.white,
        letterSpacing: 4);
  }

  HeadLine_Text() {
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
  }

  Body_Text() {
    TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
  }

  
              //  TextField Decorations

    Input_dec({required String labelTxt, required String hintTxt, required Icon preIcon}) {
      InputDecoration(
          labelText: labelTxt,
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white70,
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: hintTxt,


          prefixIcon: preIcon,

          
          );
    }
  




}
