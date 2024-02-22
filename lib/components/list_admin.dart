import 'package:flutter/material.dart';

class ListAdmin extends StatelessWidget {
  const ListAdmin(
      {super.key, required this.name, required this.id, required this.title});

  final String name;
  final String id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '($id)',
              style: const TextStyle(
                  color: Color(0xFF898989),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Program Reguler",
              style: TextStyle(
                color: Color(0xFF233975),
                fontSize: 13,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              width: 120,
              decoration: BoxDecoration(
                  color: const Color(0xFF25D366),
                  borderRadius: BorderRadius.circular(15)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hubungi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
        const Divider()
      ],
    );
  }
}
