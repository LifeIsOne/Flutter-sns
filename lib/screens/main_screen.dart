import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        // 클릭했을 때/안 돼있을 때 올라옴
        showSelectedLabels: false,
        showUnselectedLabels: false,
        // 해당탭의 인댁스 지정
        currentIndex: _selIdx,
        // 하단 바(백그라운드) 색상
        backgroundColor: Colors.grey[50],
        // 선택된 아이콘 색상
        selectedItemColor: Colors.black,
        // 선택되지 않은 아이콘 색상
        unselectedItemColor: Colors.black54,
        onTap: (i) {
          setState(() {
            _selIdx = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ellipsisH),
            label: "",
          ),
        ],
      ),
    );
  }
}
