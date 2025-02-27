import 'package:flutter/material.dart';

class CafeTextField{
                     
                     
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

     TextField textFieldCommon({
      required TextEditingController contlr,
      required TextStyle fieldStyle,
      required Color curColor,
      required InputDecoration decor
     }

     
      )
     
     {
      return
       TextField(
                        controller: contlr,
                        style:fieldStyle,
                        cursorColor: curColor,
                        decoration: decor
                            );
                            
      

     }
  
}