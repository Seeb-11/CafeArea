
import 'package:code_cafe/Utils/theme/custom_theme/Elevated_button.dart';
import 'package:code_cafe/Utils/theme/custom_theme/check_box.dart';
import 'package:code_cafe/Utils/theme/custom_theme/outline_button.dart';
import 'package:code_cafe/Utils/theme/custom_theme/textTheme.dart';
import 'package:code_cafe/Utils/theme/custom_theme/text_field_theme.dart';
import 'package:flutter/material.dart';

class CafeAppTheme{
  ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.brown,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CafeTextTheme.lightTextTheme,
    elevatedButtonTheme: CafeElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: CafeTextFieldTheme.lightInputDecoration,
    checkboxTheme: CafeCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: CafeOutlinedButtonTheme.lightOutlineButtonTheme,
  );
  ThemeData darkTheme =ThemeData(
     useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.brown,
    scaffoldBackgroundColor: Colors.black,
    textTheme: CafeTextTheme.darkTextTheme,
    elevatedButtonTheme: CafeElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: CafeTextFieldTheme.darkInputDecoration,
    checkboxTheme: CafeCheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: CafeOutlinedButtonTheme.darkOutlineButtonTheme,
    
    
  );
}