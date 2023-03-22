import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displaystatus;

  Avatar({required this.displayImage, required this.displaystatus});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.all(5.0),
        height: 60,
        width: 60,
        // margin: EdgeInsets.all(5),
        child: CircleAvatar(
          backgroundImage: AssetImage(displayImage),
        ),
      ),
      displaystatus
          ? Positioned(
              right: 5,
              bottom: 9,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
              ),
            )
          : SizedBox(),
    ]);
  }
}
