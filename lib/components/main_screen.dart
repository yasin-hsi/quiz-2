import 'package:flutter/material.dart';
import 'package:hsi_app/components/appbar_home.dart';
import 'package:hsi_app/views/academy.dart';
import 'package:hsi_app/views/home.dart';
import 'package:hsi_app/views/profile.dart';
import 'package:hsi_app/views/regular.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeView(),
    const AcademyView(),
    const RegulerView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarHome(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF233975),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Akademi'),
            BottomNavigationBarItem(
                icon: Icon(Icons.description_outlined), label: 'Reguler'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: 'Profil'),
          ],
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
        body: _widgetOptions.elementAt(_selectedIndex));
  }
}
