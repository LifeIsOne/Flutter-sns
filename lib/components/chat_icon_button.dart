import 'package:flutter/material.dart';

class ChatIconButton extends StatelessWidget {
  const ChatIconButton({
    super.key,
    required this.icon,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      onPressed: () {},
      icon: icon,
      iconSize: 25,
    );
  }
}
