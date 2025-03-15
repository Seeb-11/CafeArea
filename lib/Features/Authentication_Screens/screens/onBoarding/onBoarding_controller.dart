import 'package:code_cafe/Features/Authentication_Screens/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  static OnBoardingController get instance => Get.find();
     
          final pageController = PageController();
          Rx<int> currPageIndex =0.obs;


          // Update current index when page scroll

          void updatePageIndicator(index) =>currPageIndex.value=index;

          // Jump to the specific dot selected page
          void dotNavigationClick(index){
            currPageIndex.value =index;
            pageController.jumpToPage(index);

          }
          // Update current index and jump to next page
          void nextPage(){
              //  currPageIndex.value=index;
              //  pageController.jumpTo(index);
              if(currPageIndex.value == 2){

                Get.to(()=>const LoginScreen());
              }else{
                
                int page = currPageIndex.value+1;
                pageController.jumpToPage(page);
              }
          }
           // Update current index and jump to last page
          void skipPage(){
            currPageIndex.value =2;
            pageController.jumpToPage(2);
          }
}