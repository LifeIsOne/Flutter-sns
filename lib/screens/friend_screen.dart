import 'package:flutter/material.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("친구")),
    );
  }
}
