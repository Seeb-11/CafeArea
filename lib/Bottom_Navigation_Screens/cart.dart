import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

       final items = [
    Image.asset('images/banner1.jpeg'),
    Image.asset('images/banner2.jpg'),
    Image.asset('images/banner2.jpg'),
  ];
  return Scaffold(
            resizeToAvoidBottomInset: false,
       
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
                 child: Stack(
                  children: [
                                 Column(
                                   children: [
                                    Container(
                                        margin: const EdgeInsets.only(top: 10),
                                      child: const Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Column(
                                                                  children: [
                                    
                                                                    Text("Add To Cart",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w600)),
                                                                  ],
                                                                ),
                                                                Icon(
                                                                  color: Colors.white,
                                                                  Iconsax.shopping_bag)
                                                            
                                                              ],
                                                            ),
                                    ),
                                     Container(
                                      height: 600,
                                       child: ListView.separated(itemBuilder:  (context, index) {
                                         return  Container( 
                                                             height: 150,
                                                                 
                                                             decoration: BoxDecoration(
                                                               
                                                               // color: Colors.amber,
                                                               border: Border.all(color: Colors.white60)
                                                             ),
                                                                    
                                                             // ignore: avoid_unnecessary_containers
                                                             child:  Container(
                                                               // color: Colors.amber,
                                                               child:  Row(
                                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                 children: [
                                                                   Column(
                                                                     mainAxisAlignment: MainAxisAlignment.center,
                                                                     children: [
                                                                       // ignore: avoid_unnecessary_containers
                                                                       Container(
                                          //  color: Colors.red,
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                           Text("MILK COFFEE",
                                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                                          SizedBox(height: 10,),
                                          Text("Milk coffee is good for",
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                                          Text("health",
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                                          SizedBox(height: 20,),
                                          Text("Rs.2000.00",
                                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white),),
                                           
                                         ]
                                        )
                                                                       ),
                                                                     ],
                                                                   ),
                                                               
                                                                   const Image(
                                                                     height: 100,
                                                                     width: 100,
                                                                     image: AssetImage('assets/images/banner1.jpeg'))
                                                                 ],
                                                               ),
                                                             ),
                                             ) ;
                                       },
                                        separatorBuilder: (context, index) {
                                           return Divider(
                                            height: 10,
                                            thickness: 4,
                                            color: Colors.black,
                                           );
                                       }, 
                                       
                                       itemCount: items.length,
                                       
                                       
                                       
                                       ),
                                     ),
                                   ],
                                 )

                 
                  ],
                 ),
      ),
  );
  }
}