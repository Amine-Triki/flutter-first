import 'package:flutter/material.dart';
import 'package:project1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff3f5f7),
        primaryColor: const Color.fromARGB(255, 145, 60, 242),
        primaryColorLight: const Color(0xFFFDAB88),
      ),
      home:  HomePage(),
    );
  }
}
