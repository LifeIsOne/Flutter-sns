import 'package:flutter/material.dart';
import 'package:kakao/screens/main_screen.dart';

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
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.yellow, // 어디 백그라운드지?
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 24), // ?
          iconTheme: IconThemeData(color: Colors.black), // ?
        ),
      ),
      home: MainScreen(),
    );
  }
}