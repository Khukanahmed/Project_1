import 'package:flutter/material.dart';
import 'package:project1/Buttom_nav_bar.dart';
import 'package:project1/Pages/My_add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:Nav_bar()
    );
  }
}
