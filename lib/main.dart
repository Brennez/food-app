import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food/screens/HomePage.dart';
import 'package:food/screens/detailsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Colors.blueGrey,
          ),
      home: HomePage(),
    );
  }
}
