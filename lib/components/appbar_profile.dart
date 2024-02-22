import 'package:flutter/material.dart';
import 'package:hsi_app/config/config.dart' as config;

class AppbarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppbarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: const Text(
        'Profil',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: const [
        Text(
          config.appVersion,
          style: TextStyle(color: Color(0xFF898989)),
        ),
        SizedBox(width: 10)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
