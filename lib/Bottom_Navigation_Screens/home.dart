
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


    final List capCoffee = [
            'assets/images/capCoffee/coffee1.png',
            'assets/images/capCoffee/coffee2.png',
            'assets/images/capCoffee/coffee3.png',
            'assets/images/capCoffee/coffee4.png',
           
           
         
           
                 
    ];


  var coffeeNames = [
    "cappuccino",
    "Espresso",

    "Machinate",
    "Café au lait",
    "Americano",
  ];

  var coffeImages = [];

  @override
  Widget build(BuildContext context) {
   PageController  pageController = PageController();
  

    final items = [
    Image.asset('images/banner1.jpeg'),
    Image.asset('images/banner2.jpg'),
    Image.asset('images/banner2.jpg'),
  ];

 

    return  Scaffold(
       resizeToAvoidBottomInset: false,
       
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children:[ 
                     Column(
                      children: [
                                               Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Good day for coffee",style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),
                              Text("Muhammad Haseeb",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.w600)),
                            ],
                          ),
                          Icon(
                            color: Colors.white,
                            Icons.search)
                      
                        ],
                      ),
                    ),

                  SizedBox(
                    height: 300,
                    child: ListView(
                      children: [
                        CarouselSlider(items: [
                                                 Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/banner1.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                                    ),
                    
                    
                                     Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image:AssetImage('assets/images/banner2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                                    ),
                    
                        ], 
                        options:  CarouselOptions(
                                    height: 180.0,
                                    enlargeCenterPage: true,
                                    autoPlay: true,
                                    aspectRatio: 16 / 9,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enableInfiniteScroll: true,
                                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                    viewportFraction: 0.8,
                                  ),
                        )
                      ],
                    ),
                  )  ,
                  SmoothPageIndicator(
              controller: pageController,
              count: items.length,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 32,
                  height: 12,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                dotDecoration: DotDecoration(
                  width: 16,
                  height: 16,
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16),
                  verticalOffset: 0,
                ),
                spacing: 6.0,
              ),
            ),



                   Container(
                    height: 400,
                     child: ListView.builder(itemBuilder: (context, index) {
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
                     
                     itemCount: 4,
                     scrollDirection: Axis.vertical,
                     
                     
                     ),
                   )

                 




                  
                      ],
                     )
                   


          //     Container(
          //           margin: EdgeInsets.only(left: 250,bottom: 100),
          //             height: 100,
          //             width: 100,
          //             // color: Colors.amber,
          //                   child: Image(image: AssetImage('assets/images/image_dark.png'))
                         
          //           ),
          

          //   Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Container(
          //       margin: const EdgeInsets.only(left: 10, top: 0),
          //       child:  const Column(
          //         children: [
                 
                    
          //           Center(
          //             child: SizedBox(
          //               width: 350,
          //               child: Text(
          //                 "Find the best",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.w600,
          //                     fontSize: 25,
          //                     color: Colors.white,
          //                     letterSpacing: 4),
          //               ),
          //             ),
          //           ),
          //           Center(
          //             child: SizedBox(
          //               width: 350,
          //               child: Text(
          //                 "coffee for you",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.w600,
          //                     fontSize: 25,
          //                     color: Colors.white,
          //                     letterSpacing: 4),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Center(
          //       child: Container(
          //         margin: const EdgeInsets.only(top: 20),
          //         width: 335,
          //         height: 40,
          //         child: const TextField(
          //           cursorColor: Colors.white70,
          //           style: TextStyle(color: Colors.white),
          //           decoration: InputDecoration(
          //               hintText: "Find your coffee here",
          //               hintStyle: TextStyle(
          //                   color: Colors.white38,
          //                   fontWeight: FontWeight.w200,
          //                   fontSize: 12,
          //                   letterSpacing: 4),
          //               border: OutlineInputBorder(
          //                   borderRadius: BorderRadius.all(Radius.circular(8))),
          //               focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(width: 2, color: Colors.white70),
          //                 borderRadius: BorderRadius.all(Radius.circular(10)),
          //               ),
          //               prefixIcon: Icon(
          //                 Iconsax.search_favorite,
          //                 color: Colors.white,
          //               )),
          //         ),
          //       ),
          //     ),
          //     Center(
          //       child: Container(
          //         margin: const EdgeInsets.only(left: 12, top: 10),
          //         height: 50,
          //         // color: Colors.orange,
          //         child: ListView.builder(
          //           itemBuilder: (context, index) {
          //             return Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
                          
          //                 coffeeNames[index].toString(),
                           
          //                 style: const TextStyle(
          //                     fontSize: 15,
          //                     fontWeight: FontWeight.w600,
          //                     color: Colors.white),
          //               ),
          //             );
          //           },
          //           scrollDirection: Axis.horizontal,
          //           itemCount: coffeeNames.length,
          //         ),
          //       ),
          //     ),



          //   Container(
          //       height: 250,
          //       width: 500,
          //       // color: Colors.purple,
          //       child: ListView.builder(
          //         itemBuilder: (context, index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Container(
          //               margin: const EdgeInsets.only(left: 10),
          //               child: Stack(
          //                 children: [
                          
          //                Container(
          //                 margin: EdgeInsets.only(left: 50,top: 50),
                                
          //                       height: 200,
          //                       width: 150,
          //                       decoration: BoxDecoration(
          //                         color: Colors.white,
          //                         borderRadius: BorderRadius.circular(15),
          //                       ),
          //                     ),
          //                      Container(
                        
          //                     height: 150,
          //                     width: 150,
                          
          //                     decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(15),
          //                         // color: Colors.cyan  ,      
          //                         image: DecorationImage(
                                      
          //                           image: AssetImage(
                                   
          //                           capCoffee[index]))                          
                                  
          //                         ),
          //                   ),
        
                           
          //                     Container(
          //                       margin: const EdgeInsets.only(top: 150,left: 70),
          //                       child: Text(
          //                         coffeeNames[index].toString(),
          //                         style: const TextStyle(
          //                             fontSize: 18,
          //                             fontWeight: FontWeight.w600,
          //                             // color: Colors.orange
          //                             color: Colors.black
                                      
                                      
          //                             ),
          //                       ),
          //                     ),
          //                 ],
          //               ),
          //             ),
          //           );
          //         },
          //         itemCount: capCoffee.length,
          //         scrollDirection: Axis.horizontal,
          //       ),
          //     ),
          //     Container(
          //       margin: const EdgeInsets.only(left: 20, top: 10),
          //       child: const Text(
          //         "Special Offer for you",
          //         style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.w600,
          //             color: Colors.white,
          //             letterSpacing: 2),
          //       ),
          //     ),


          //     const SizedBox(height: 10),





          //    Container(
          //       height: 250,
          //       width: 500,
          //       // color: Colors.purple,
          //       child: ListView.builder(
          //         itemBuilder: (context, index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Container(
          //               margin: const EdgeInsets.only(left: 10),
          //               child: Stack(
          //                 children: [
                          
          //                Container(
          //                 margin: EdgeInsets.only(left: 50,top: 50),
                                
          //                       height: 150,
          //                       width: 280,
          //                       decoration: BoxDecoration(
          //                         color: Colors.white,
          //                         borderRadius: BorderRadius.circular(15),
          //                       ),
          //                     ),
          //                      Container(
                        
          //                     height: 150,
          //                     width: 150,
                          
          //                     decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(15),
          //                         // color: Colors.cyan  ,      
          //                         image: DecorationImage(
                                      
          //                           image: AssetImage(
                                   
          //                           capCoffee[index]))                          
                                  
          //                         ),
          //                   ),
        
                           
          //                     Container(
          //                       margin: const EdgeInsets.only(top: 150,left: 70),
          //                       child: Text(
          //                         coffeeNames[index].toString(),
          //                         style: const TextStyle(
          //                             fontSize: 18,
          //                             fontWeight: FontWeight.w600,
          //                             // color: Colors.orange
          //                             color: Colors.black
                                      
                                      
          //                             ),
          //                       ),
          //                     ),
          //                 ],
          //               ),
          //             ),
          //           );
          //         },
          //         itemCount: capCoffee.length,
          //         scrollDirection: Axis.horizontal,
          //       ),
          //     ),


    
          
                 
          
          
          //   ],
          // ),
           
             

          ]
        ),
        
      ),
    );
  }
  
  void setState(Null Function() param0) {}
}
