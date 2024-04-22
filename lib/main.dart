import 'package:flipcart_clone/src/constants/constants.dart';
import 'package:flutter/material.dart';

import 'src/screens/home/home_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appTitle,
      home:const HomeScreen(),
    );
  }
}

