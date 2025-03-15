import 'package:code_cafe/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.clear))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(CafeSizes.defaultSpace),
        child: Column(
          children: [
            //image

            //Tittle

            //SubTittle

            // Buttons

          ],
        ),
        
        
        ),
      ),
    );
  }
}