import 'package:flutter/material.dart';

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
