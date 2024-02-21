import 'package:flutter/material.dart';
import 'package:hsi_app/config/config.dart' as config;

class AppbarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: const Color(0xFF233975),
      leading: Container(
          height: 40,
          margin: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/logo.png')),
      title: const Text(
        'EDU HSI',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: const [
        Text(
          config.appVersion,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 10)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
