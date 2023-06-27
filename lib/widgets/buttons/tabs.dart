// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTabs extends StatelessWidget {
  const CustomTabs({
    Key? key,
    required this.icon,
    required this.size,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Tab(icon: Icon(icon, color: color, size: size));
  }
}
