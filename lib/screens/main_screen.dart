import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selIdx,
        children: [
          Center(child: Text("첫번째 스크린입니다.")),
          Center(child: Text("두번째 스크린입니다.")),
          Center(child: Text("세번째 스크린입니다."))
        ],
      ),
    );
  }
}
