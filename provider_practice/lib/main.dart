import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/home.dart';
import 'package:provider_practice/provider_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      
      // ChangeNotifierProvider(
      //   create: (context) {
      //     ProviderModel();
      //   },
      //   child: HomeScreen(),
      //   ),
        MultiProvider(
          providers: [
            Provider<ProviderModel>(create: (context) =>ProviderModel(),),
          ],
          child: HomeScreen(),
          )


    );
  }
}




  