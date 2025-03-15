import 'package:flutter/material.dart';

class CafeCheckBoxTheme{
  static final lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else {
        Colors.transparent;
      }
      return null;
    },)


  );
  static final darkCheckBoxTheme = CheckboxThemeData(
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor:  WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else {
        Colors.transparent;
      }
      return null;
    },)
  );
}