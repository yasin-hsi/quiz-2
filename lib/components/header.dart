import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
  }
}
