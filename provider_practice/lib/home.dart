import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Text( "${Provider.of<ProviderModel>(context,listen: true)}"
        
        ,style:const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400
        ),
        ),
      ),
      floatingActionButton:  FloatingActionButton(onPressed: (){
                           
              Provider.of<ProviderModel>(context,listen: false).add();
      },
      child: const Icon(
        Icons.add
      ),
      ),
    );

  }
}