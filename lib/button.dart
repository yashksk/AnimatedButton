import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  bool isFollowing;
  Button({super.key, required this.isFollowing});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      height: 30,
      width: 90,
      decoration: BoxDecoration(
          color: widget.isFollowing ? Colors.transparent : Colors.blue,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: widget.isFollowing ? Colors.blue : Colors.transparent)),
      child: Center(
          child: Text(
            widget.isFollowing ? 'Following' : 'Follow',
            style:
            TextStyle(color: !widget.isFollowing ? Colors.white : Colors.blue),
          )),
    );
  }
}
