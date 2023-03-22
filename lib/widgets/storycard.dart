import 'package:facebook_clone/widgets/appbarButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StoryCard extends StatelessWidget {
  final String displayStory;
  final IconData? storyIcon;
  final String storyText;
  final bool? showAvatar;
  final String displayAvatar;

  StoryCard(
      {required this.displayAvatar,
      this.showAvatar = true,
      required this.displayStory,
      this.storyIcon,
      required this.storyText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 7, right: 8, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(displayStory), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 5,
              child: showAvatar == false
                  ? AppBarButton(
                      buttonAction: () {},
                      buttonIcon: storyIcon,
                      iconcolor: Colors.blue,
                    )
                  : Container(
                      padding: EdgeInsets.all(5.0),
                      height: 60,
                      width: 60,
                      // margin: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(displayAvatar),
                      ))),
          Positioned(
            bottom: 10,
            left: 35,
            child: Text(
              storyText,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
