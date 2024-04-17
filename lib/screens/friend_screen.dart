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
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("친구")),
      body: Column(
        children: [
          const SizedBox(height: 10),
          //   프로필 - 재사용
          ProfiledCard(user: me)
        ],
      ),
    );
  }
}
