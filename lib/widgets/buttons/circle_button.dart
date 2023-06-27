// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:facebook_clone_ui/style/style.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Style.bottonBG,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 30,
            color: Colors.black,
          )),
    );
  }
}
