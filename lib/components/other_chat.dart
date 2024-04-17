import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

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
