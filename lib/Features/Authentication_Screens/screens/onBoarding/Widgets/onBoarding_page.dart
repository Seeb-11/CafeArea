
import 'package:code_cafe/Utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {

     String image ,tittle,subTittle;
    
      
   OnboardingPage({
    super.key , required this.image ,required this.tittle ,required this.subTittle ,
    });

  @override
  Widget build(BuildContext context) {
    
    return  Padding(
                        padding:  EdgeInsets.zero,
                        child: Column(
                          children: [
                             Container(
                              height: 480,
                              width: 360,
                              decoration:  BoxDecoration(
                                color: Colors.amber,
                                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(image)
                                  
                                  )
                              ),
                             ),
                             const SizedBox(height: CafeSizes.spaceBtxItems,),
                             Text(tittle,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                             const SizedBox(height: CafeSizes.spaceBtxItems,),
                             Text(subTittle,style:Theme.of(context).textTheme.bodyMedium ,textAlign: TextAlign.center,),
                          ],
                        ),
                      );
  }
}