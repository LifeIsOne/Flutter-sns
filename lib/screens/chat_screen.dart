import 'package:flutter/material.dart';
import 'package:kakao/models/chat.dart';

import '../components/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅(목록보기)채팅방 배경색
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("채팅"),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ChatCard(chat: chats[index]);
        },
      ),
    );
  }
}
