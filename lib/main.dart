import 'package:flutter/material.dart';
import 'package:flutter_naver_mail/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      home: const MainScreen(),
    );
  }
}
