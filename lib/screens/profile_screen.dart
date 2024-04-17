import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/round_icon_button.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          // ✅user에서 데이터 가져오기
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        // ✅배경 투명
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            // ✅수직방향 Column 만들건데 Spacer()가 위의 남은 공간 차지. Column의 기속성의
            const Spacer(),
            // ✅지름 110 짜리 프로필 이미지 구현
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(user.backgroundImage),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8),
            // ✅유저 이름
            Text(
              user.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            // ✅유저 상태명
            const SizedBox(height: 5),
            Text(
              user.intro,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              // ✅한 줄만!
              maxLines: 1,
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.white),
            if (user.name == me.name) Row() else Row(),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            RoundIconButton(icon: FontAwesomeIcons.gift),
            SizedBox(width: 15),
            RoundIconButton(icon: FontAwesomeIcons.cog),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
