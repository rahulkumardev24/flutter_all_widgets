import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageAutoSlider extends StatefulWidget {
  const ImageAutoSlider({super.key});

  @override
  State<ImageAutoSlider> createState() => _ImageAutoSliderState();
}

class _ImageAutoSliderState extends State<ImageAutoSlider> {
  /// HERE WE CREATE LIST OF IMAGE
  List<Image> imageList = [
    Image.asset("assets/images/banner 1.webp"),
    Image.asset("assets/images/banner 2.webp"),
    Image.asset("assets/images/banner 3.png"),
    Image.asset("assets/images/banner 4.png"),
    Image.asset("assets/images/banner 5.png"),
    Image.asset("assets/images/banner 6.webp"),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Auto Slider"),
      ),
      body: Column(
        children: [
          /// here we apply
          CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index, realIndex) {
                return imageList[index];
              },
              options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 10,
                  viewportFraction: 0.8,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),

          /// here we show inductor
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imageList.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                height: 12.0,
                width: currentIndex == index ? 24 : 12,
                decoration: BoxDecoration(
                  color: currentIndex == index ? Colors.blue : Colors.black54,
                  borderRadius: BorderRadius.circular(6.8),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

/// IN THIS VIDEO CREATE IMAGE AUTO SLIDER
/// SIMPLE STEP
/// ADD DEPENDENCY
/// complete any error then comment in comment box
/// final check check
