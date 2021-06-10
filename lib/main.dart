import 'package:flutter/material.dart';
import 'package:ecommerce_screens/home.dart';
// import 'package:ecommerce_screens/history.dart';
// import 'package:ecommerce_screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
            Home(),
            // History(),
            // Profile(),
      ),
    );
  }
}
