import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

final List<String> imagesUrl = [
  "https://images.pexels.com/photos/211290/pexels-photo-211290.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/947384/pexels-photo-947384.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/281962/pexels-photo-281962.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/256450/pexels-photo-256450.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
];

int imageCount = 0;


List<Widget> generateImages() {
  return imagesUrl
      .map(
        (e) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(e), fit: BoxFit.cover),
          ),
        ),
      )
      .toList();
}

class _CustomCarouselState extends State<CustomCarousel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          //height: 400,
          child: CarouselSlider(
            items: generateImages(),
            options: CarouselOptions(
                enlargeCenterPage: true,
                initialPage: imageCount,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                onPageChanged: (index, other) {
                  setState(() {
                    imageCount = index;
                  });
                }),
          ),
        ),
      ],
    );
  }
}
