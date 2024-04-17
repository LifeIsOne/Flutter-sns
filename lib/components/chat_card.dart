import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kakao/models/user.dart';

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
                body: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TimeLine(time: "2024년 4월 17일 금요일"),
                          OtherChat(
                            name: "최주호",
                            text: "많이 늘었네",
                            time: "오후 2:50",
                          ),
                          MyChat(
                            text: "ㄟ( ▔, ▔ )ㄏ",
                            time: "오후 2:51",
                          )
                        ],
                      ),
                    ),
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

class MyChat extends StatelessWidget {
  const MyChat({super.key, this.text, this.time});

  final text;
  final time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        // 내 채팅이니까 오른쪽 끝
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(time, style: const TextStyle(fontSize: 12)),
          SizedBox(width: 5),
          Flexible(
              child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: Color(0xFFFEEC34),
            ),
            child: Text(text),
          ))
        ],
      ),
    );
  }
}

class TimeLine extends StatelessWidget {
  const TimeLine({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF9CAFBE),
      ),
      child: Text(
        time,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class OtherChat extends StatelessWidget {
  const OtherChat({
    super.key,
    required this.name,
    required this.text,
    required this.time,
  });

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(friends[0].backgroundImage),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
            child: Column(
          children: [
            Text(name),
            Container(
              child: Text(text),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
            )
          ],
        ))
      ],
    );
  }
}
