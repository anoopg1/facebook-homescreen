import 'package:facebook_clone/sections/headerbuttonsection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewsFeed extends StatelessWidget {
  final String profilePicture;
  final String profileName;
  final bool? verified;
  final String feed;

  NewsFeed(
      {required this.profilePicture,
      required this.profileName,
      this.verified = false,
      required this.feed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profilePicture),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
                  child: Text(profileName),
                ),
                verified == true
                    // ignore: prefer_const_constructors, avoid_unnecessary_containers
                    ? Container(
                        child: Icon(
                          Icons.verified,
                          color: Colors.blue,
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            Icon(
              Icons.keyboard_control,
            )
          ],
        ),
        SizedBox(
          height: 350,
          width: double.infinity,
          child: Image(
            image: AssetImage(feed),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_sharp),
                  label: const Text("Like")),
              const VerticalDivider(
                thickness: 2,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.comment),
                  label: Text("Comment")),
              VerticalDivider(
                thickness: 2,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  label: Text("Share")),
            ],
          ),
        )
      ],
    );
  }
}
