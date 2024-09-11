import 'package:flutter/material.dart';
import 'package:lab_3_flutter/screens/home_screen.dart';
//import 'package:lab_3_flutter/screens/pastor_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
