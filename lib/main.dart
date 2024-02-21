import 'package:flutter/material.dart';
import 'package:hsi_app/views/home.dart';
import 'package:hsi_app/views/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'PlusJakarta'),
        home: const HomeView(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => const HomeView(),
          '/profile': (context) => const ProfileView()
        });
  }
}
