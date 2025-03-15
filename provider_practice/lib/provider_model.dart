import 'package:flutter/material.dart';

class ProviderModel extends ChangeNotifier
{
    int counter =0;
       int add(){
        notifyListeners();
        return counter++;
          
       }


}