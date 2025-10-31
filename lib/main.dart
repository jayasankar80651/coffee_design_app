import 'package:coffee_design/design_3.dart';
import 'package:coffee_design/desing_2.dart';
import 'package:coffee_design/newpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   CoffeeDesign(),
      debugShowCheckedModeBanner: false,
    );
  }

}