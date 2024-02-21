import 'package:flutter/material.dart';
import 'package:hsi_app/config/config.dart' as config;

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
              config.appVersion,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(width: 10)
          ],
        ),
        body: ListView(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                child: const Stack(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Assalamualaikum,'),
                      Text(config.userName),
                      Text(config.userId)
                    ],
                  )
                ]))
          ],
        ));
  }
}
