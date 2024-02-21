import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hsi_app/config/config.dart' as config;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static List<Image> banners = [
    Image.asset(
      'assets/images/banner/banner-1.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/banner/banner-2.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/banner/banner-3.jpg',
      fit: BoxFit.cover,
    )
  ];

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
                padding: const EdgeInsets.all(20),
                child: Stack(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Assalamualaikum,',
                          style: TextStyle(color: Color(0xFF898989))),
                      const SizedBox(height: 5),
                      const Text(
                        config.userName,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        config.userId,
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 240.0,
                          autoPlay: true,
                        ),
                        items: banners.map((bannerImage) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: bannerImage,
                                  ));
                            },
                          );
                        }).toList(),
                      )
                    ],
                  )
                ]))
          ],
        ));
  }
}
