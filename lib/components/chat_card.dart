import 'package:flutter/material.dart';

import '../models/chat.dart';
import '../screens/chat_room_screen.dart';

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
            builder: (context) => ChatRoomScreen(),
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
