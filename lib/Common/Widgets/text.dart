import 'package:flutter/material.dart';

class CafeText {
  // ignore: non_constant_identifier_names
  TextStyle buttonTextStyle() {
    return
    const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.normal,
        color: Colors.white,
        letterSpacing: 4);
  }

  TextStyle headLineText() {
    return
    const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold);
  }

  TextStyle bodyText() {
    return
    const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal);
  }

  
              //  TextField Decorations

    
    InputDecoration inputDecoration({required String labelTxt, required Icon preIcon}) {
      String hintText =labelTxt;
      return
    
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
          hintText:hintText ,


          prefixIcon: preIcon,

          
          );
    }
  




}
