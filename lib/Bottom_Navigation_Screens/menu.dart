import 'package:code_cafe/Bottom_Navigation_Screens/cart.dart';
import 'package:code_cafe/Bottom_Navigation_Screens/fav.dart';
import 'package:code_cafe/Bottom_Navigation_Screens/home.dart';
import 'package:code_cafe/Bottom_Navigation_Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});


  @override
  State<MenuScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MenuScreen> {
  int selectedValue = 0;
  int selectedIndex = 0;
   Color myColor =const Color(0xffBA7943);
  List screenList = [
    HomeScreen(),
    CartScreen(),
    FavoriteScreen(),
    const ProfileScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   leading: Builder(
      //     builder: (context) {
      //       return IconButton(
      //           onPressed: () {
      //             Scaffold.of(context).openDrawer();
      //           },
      //           icon: const Icon(
      //             size: 30,
      //             Iconsax.menu5,
      //             color: Colors.white,
      //           ));
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedValue,
          onTap: (index) {
            setState(() {
              selectedValue = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: myColor,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.shopping_bag), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.heart), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.user), label: 'Profile'),
          ]),
      body: screenList[selectedValue],
      // drawer: Drawer(
      //     child: Container(
      //   color: myColor,
      //   child: ListView(
      //     children: [
         
      //       ListTile(
      //         title: const Text(
      //           "Sign Out",
      //           style:
      //               TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      //         ),
      //         onTap: () async {},
      //       ),
      //     ],
      //   ),
      // )),
    );
  }
}
