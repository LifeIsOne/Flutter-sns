import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.chat,
  });

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Container(
              color: const Color(0xFFB2C7DA),
              child: Scaffold(
                // ✅기본 배경이 흰색이기 때문에 transparent
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "홍길동",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  actions: const [
                    Icon(FontAwesomeIcons.search, size: 20),
                    SizedBox(width: 20),
                    Icon(FontAwesomeIcons.bars, size: 20),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(chat.image),
                ),
                title: Text(
                  chat.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(chat.content),
                contentPadding: const EdgeInsets.all(0),
              ),
            ),
            // ✅톡 온 시간 표시
            Column(
              children: [
                Text(
                  chat.time,
                  style: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                if (chat.count != "0")
                  Container(
                    // ✅padding으로 안읽은 메시지 숫자를 동그랗게? 왜?
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFFDE6344),
                    ),
                    child: Text(
                      chat.count,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
