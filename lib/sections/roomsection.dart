import 'package:facebook_clone/sections/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 15, right: 10, bottom: 6),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: "assets/avatars/lal.jpeg",
            displaystatus: true,
          ),
          Avatar(displayImage: "assets/avatars/raj.jpeg", displaystatus: true),
          Avatar(
              displayImage: "assets/avatars/dileep.jpeg", displaystatus: true),
          Avatar(
              displayImage: "assets/avatars/mammooka.jpeg",
              displaystatus: true),
          Avatar(displayImage: "assets/avatars/dq.jpeg", displaystatus: true),
          Avatar(displayImage: "assets/avatars/raj.jpeg", displaystatus: true),
          Avatar(displayImage: "assets/avatars/raj.jpeg", displaystatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Row(children: [
      SizedBox(
        height: 60,
        child: OutlinedButton.icon(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)))),
            onPressed: () {
              print("Outline button pressed");
            },
            icon: Icon(
              Icons.video_call,
              color: Colors.purple,
            ),
            label: Text(
              "Create     \nRoom",
              style: TextStyle(fontSize: 16),
            )),
      ),
    ]);
  }
}
