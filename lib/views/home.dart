import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:hsi_app/config/config.dart' as config;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _activeBannerIndex = 0;
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
    return ListView(
      children: [
        Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.all(20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Assalamualaikum,',
                          style: TextStyle(color: Color(0xFF898989))),
                      SizedBox(height: 5),
                      Text(
                        config.userName,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        config.userId,
                        style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              const SizedBox(height: 15),
              CarouselSlider(
                options: CarouselOptions(
                    height: 240.0,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _activeBannerIndex = index;
                      });
                    }),
                items: banners.map((bannerImage) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: bannerImage,
                          ));
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _activeBannerIndex,
                  count: banners.length,
                  effect: const ExpandingDotsEffect(
                      dotWidth: 12,
                      dotHeight: 12,
                      activeDotColor: Color(0xFF233975)),
                ),
              )
            ],
          )
        ])
      ],
    );
  }
}
