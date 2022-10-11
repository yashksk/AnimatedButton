import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final bool isFollowing;
  const Button({super.key, required this.isFollowing});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> with SingleTickerProviderStateMixin {
  late bool isFollowing;
  late AnimationController _controller;
  late Animation<Color?> animation;
  late Animation<Color?> animation_2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isFollowing = widget.isFollowing;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    animation = ColorTween(
      begin: Colors.transparent,
      end: Colors.blue,
    ).animate(_controller);
    animation_2 = ColorTween(
      begin: Colors.blue,
      end: Colors.white,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFollowing = !isFollowing;
        });
        if (isFollowing) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      child: Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
            color: animation.value,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: animation_2.value!)),
        child: Center(
            child: Text(
          isFollowing ? 'Following' : 'Follow',
          style: TextStyle(color: animation_2.value),
        )),
      ),
    );
  }
}
