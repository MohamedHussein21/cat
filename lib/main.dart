import 'package:flutter/material.dart';
import 'package:untitled2/screen/screen1.dart';
import 'package:untitled2/screen/screen2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context)=>Screen1(),
        'second' : (context) =>Screen2(title: 'CatFlutter',),
      },
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

    );
  }
}

