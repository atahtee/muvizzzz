import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int showedIndex = 0;
  final banners = [
    "assets/banner1.jpeg",
    "assets/movies3.jpeg",
    "assets/movies1.jpeg",
    "assets/movies2.jpeg",
    "assets/movies4.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: banners.length,
            options: CarouselOptions(
              initialPage: showedIndex,
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  showedIndex = index;
                });
              },
            ),
            itemBuilder: (context, index, _) {
              return Image(
                image: AssetImage(
                  banners[index],
                ),
                fit: BoxFit.fill,
              );
            },
          ),
          Positioned(
              left: 16,
              bottom: 16,
              child: Row(
                  children: List.generate(
                banners.length,
                (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: showedIndex == index ? 24 : 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                      color: showedIndex == index
                          ? Theme.of(context).primaryColor
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                  );
                },
              )))
        ],
      ),
    );
  }
}
