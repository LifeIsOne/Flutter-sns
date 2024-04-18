import 'package:flutter/material.dart';

import '../models/tab.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        title: const Text("더보기"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(
                tabs.length,
                (index) => Column(
                      children: [
                        Icon(tabs[index].icon) /* 아이콘 정렬*/,
                        SizedBox(height: 5) /* 아이콘과 텍스트 사이*/,
                        Text(
                          tabs[index].text /* 텍스트*/,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ))),
      ),
    );
  }
}
