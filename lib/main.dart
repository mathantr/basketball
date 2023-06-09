import 'package:flutter/material.dart';

import '../bottom_navigator/bottom_navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PT Sans Caption',
      ),
      home: MyBottomNavigationBar(),
    );
  }
}
