import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required buttonColor,
  }) {
    return TextButton.icon(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttonColor,
        ),
        label: Text(buttonText));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              label: Text(
                "Live",
                style: TextStyle(color: Colors.grey),
              )),
          verticalDivider,
          headerButton(
              buttonText: "Photo",
              buttonIcon: Icons.photo_album,
              buttonAction: () {
                print("hello");
              },
              buttonColor: Colors.green),
          verticalDivider,
          headerButton(
              buttonText: "Photo",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("hello");
              },
              buttonColor: Colors.purple),
        ],
      ),
    );
  }
}
