import 'package:facebook_clone/widgets/appbarButton.dart';
import 'package:facebook_clone/widgets/storycard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            showAvatar: false,
            displayAvatar: "assets/avatars/dq.jpeg",
            storyText: "Add Story",
            displayStory: "assets/avatars/dq.jpeg",
            storyIcon: Icons.add,
          ),
          StoryCard(
            displayAvatar: "assets/avatars/lal.jpeg",
            storyText: "Mohanlal",
            displayStory: "assets/posts/porotta.jpeg",
            storyIcon: Icons.add,
          ),
          StoryCard(
            displayAvatar: "assets/avatars/mammooka.jpeg",
            storyText: "Mammoty",
            displayStory: "assets/posts/defender.jpeg",
            storyIcon: Icons.add,
          ),
          StoryCard(
            displayAvatar: "assets/posts/strell.jpeg",
            storyText: "Strell",
            displayStory: "assets/posts/rr1000.jpeg",
            storyIcon: Icons.add,
          ),
          StoryCard(
            displayAvatar: "assets/avatars/raj.jpeg",
            storyText: "Prithvi Raj",
            displayStory: "assets/posts/lambo.jpeg",
            storyIcon: Icons.add,
          )
        ],
      ),
    );
  }
}
