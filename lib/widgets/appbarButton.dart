import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData? buttonIcon;
  final void Function() buttonAction;
  final Color? iconcolor;
  final Image? displayimage;

  AppBarButton(
      {required this.buttonAction,
      this.buttonIcon,
      this.iconcolor,
      this.displayimage});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        decoration:
            BoxDecoration(color: Colors.grey[100], shape: BoxShape.circle),
        child: IconButton(
            onPressed: buttonAction,
            icon: Icon(
              buttonIcon,
              color: iconcolor,
              size: 25,
            )));
  }
}
