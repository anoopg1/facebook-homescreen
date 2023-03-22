import 'package:facebook_clone/sections/headerbuttonsection.dart';
import 'package:facebook_clone/sections/newsfeed.dart';
import 'package:facebook_clone/sections/roomsection.dart';
import 'package:facebook_clone/sections/statussection.dart';
import 'package:facebook_clone/sections/storysection.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/widgets/appbarButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            AppBarButton(
                iconcolor: Colors.black,
                buttonAction: () {
                  // print("Search screen");
                },
                buttonIcon: Icons.search),
            AppBarButton(
                iconcolor: Colors.black,
                buttonAction: () {
                  //print("Messenger");
                },
                buttonIcon: Icons.chat)
          ],
          title: const Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 8, right: 8),
          children: [
            const StatusSection(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            HeaderButtonSection(),
            Divider(
              thickness: 5,
              color: Colors.grey[300],
            ),
            const RoomSection(),
            const Divider(
              thickness: 5,
            ),
            const StorySection(),
            const Divider(
              thickness: 5,
            ),
            NewsFeed(
              feed: "assets/posts/rr1000.jpeg",
              profilePicture: "assets/avatars/lal.jpeg",
              profileName: "Mohanlal",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/posts/defender.jpeg",
              profilePicture: "assets/avatars/mammooka.jpeg",
              profileName: "Mammooty",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/posts/lambo.jpeg",
              profilePicture: "assets/avatars/raj.jpeg",
              profileName: "Prithviraj",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/posts/rr1000.jpeg",
              profilePicture: "assets/avatars/lal.jpeg",
              profileName: "Mohanlal",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/posts/porotta.jpeg",
              profilePicture: "assets/avatars/lal.jpeg",
              profileName: "Mohanlal",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/avatars/raj.jpeg",
              profilePicture: "assets/avatars/raj.jpeg",
              profileName: "Prithviraj",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/posts/rr1000.jpeg",
              profilePicture: "assets/avatars/dileep.jpeg",
              profileName: "Dileep",
              verified: true,
            ),
            Divider(
              thickness: 3,
            ),
            NewsFeed(
              feed: "assets/posts/strell.jpeg",
              profilePicture: "assets/posts/strell.jpeg",
              profileName: "Strell",
              verified: true,
            ),
            Divider(
              thickness: 3,
            )
          ],
        ),
      ),
    );
  }
}
