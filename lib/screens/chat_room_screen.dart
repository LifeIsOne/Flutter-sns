import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/chat_icon_button.dart';
import '../components/my_chat.dart';
import '../components/other_chat.dart';
import '../components/time_line.dart';

class ChatRoomScreen extends StatelessWidget {
  final chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const TimeLine(time: "2024년 4월 17일 금요일"),
                      const OtherChat(
                        name: "최주호",
                        text: "많이 늘었네",
                        time: "오후 2:50",
                      ),
                      const MyChat(
                        text: "ㄟ( ▔, ▔ )ㄏ",
                        time: "오후 2:51",
                      ),
                      ...List.generate(chats.length, (index) => chats[index])
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  const ChatIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                  Expanded(
                    child: Container(
                      child: TextField(
                        controller: _textController,
                        maxLines: 1,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        // onSubmitted: _handleSubmitted,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

// void _handleSubmitted(text) {
//   _textController.clear();
//
//   setState(() {
//     chats.add(MyChat(
//       text: text,
//       time: DateFormat,
//     ))
//   })
// }
}
