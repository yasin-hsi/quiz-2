import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            'v.2402-1601',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: const Center(child: Text('HOME')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/profile');
        },
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
