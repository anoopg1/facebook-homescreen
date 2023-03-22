import 'package:facebook_clone/sections/avatar.dart';

import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListTile(
        leading: Avatar(
            displayImage: "assets/avatars/dq.jpeg", displaystatus: false),
        title: const TextField(
          decoration: InputDecoration(
              hintText: "What's on your mind?",
              hintStyle: TextStyle(color: Colors.grey),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none),
        ),
      ),
    );
  }
}
