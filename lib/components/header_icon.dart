import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({super.key, required this.label, required this.icon});

  final String label;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 10,
        ),
        Text(label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
