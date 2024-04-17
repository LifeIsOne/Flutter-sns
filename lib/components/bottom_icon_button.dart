import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  final IconData icon;
  final String iconText;

  const BottomIconButton({
    super.key,
    required this.icon,
    required this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
