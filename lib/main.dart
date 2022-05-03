import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_designs/screens/puppy_info_recommended.dart';

import 'screens/about.dart';
import 'screens/home.dart';

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
        primarySwatch: Colors.amber,
      ),
      initialRoute: MyHomePage.routename,
      routes: {
        MyHomePage.routename: (ctx) => MyHomePage(title: 'Petsies',),
        About.routename: (ctx) => About()
      },
      home: MyHomePage(title: 'Petsies'),
    );
  }
}

