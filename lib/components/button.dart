import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color(0xFF4562F2),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
