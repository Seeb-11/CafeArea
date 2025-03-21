import 'package:flutter/material.dart';

class CafeTextFormFieldTheme{
      static final lightTextFormFieldTheme = InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.amber,
        labelStyle:const  TextStyle(fontSize: 14,color: Colors.black),
        hintStyle: const TextStyle(fontSize: 14,color: Colors.black),
        errorStyle: const TextStyle(fontStyle: FontStyle.normal),
        floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.grey)
        ),
         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.grey)
        ),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.red)
        ),
            focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2,color: Colors.orange)
        ),


      );
      static final darkTextFormFieldTheme = InputDecorationTheme(
          errorMaxLines: 3,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.amber,
        labelStyle:const  TextStyle(fontSize: 14,color: Colors.black),
        hintStyle: const TextStyle(fontSize: 14,color: Colors.black),
        errorStyle: const TextStyle(fontStyle: FontStyle.normal),
        floatingLabelStyle: TextStyle(color: Colors.black.withOpacity(0.8)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.grey)
        ),
         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.grey)
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.grey)
        ),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 1,color: Colors.red)
        ),
            focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(width: 2,color: Colors.orange)
        ),


      );
}