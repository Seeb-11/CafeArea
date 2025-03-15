import 'package:flutter/material.dart';

class CafeHelper{

 static bool isDarkMode(BuildContext context){
  return Theme.of(context).brightness == Brightness.dark;
 }

}