import 'package:flutter/material.dart';
import 'package:kakao/models/user.dart';

import '../components/profile_card.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("친구")),
      body: Column(
        children: [
          const SizedBox(height: 10),
          // 나의 프로필 카드
          ProfiledCard(user: me),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Text("친구"),
                const SizedBox(width: 10),
                Text("${friends.length} 명"),
              ],
            ),
          ),
          // 차지하는 공간만큼 확장
          Expanded(
            child: ListView(
              children: List.generate(
                friends.length,
                (index) => ProfiledCard(user: friends[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
