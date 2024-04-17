import 'package:flutter/cupertino.dart';

class MyChat extends StatelessWidget {
  const MyChat({
    super.key,
    this.text,
    this.time,
  });

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
