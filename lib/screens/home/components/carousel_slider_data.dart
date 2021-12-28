import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:the_app/models/Carousel.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CarouselSliderDataFound extends StatefulWidget {
  final List<Carousel> carouselList;

  const CarouselSliderDataFound({Key? key, required this.carouselList})
      : super(key: key);

  @override
  _CarouselSliderDataFoundState createState() =>
      _CarouselSliderDataFoundState();
}

class _CarouselSliderDataFoundState extends State<CarouselSliderDataFound> {
  int _current = 0;
  late List<Widget> imageSLider;

  @override
  void initState() {
    imageSLider = widget.carouselList
        .map((context) => Container(
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: context.url,
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                      ),
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(10)),
                        child: Text(
                          context.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            items: imageSLider,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  _current = index;
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.carouselList.map((e) {
              int index = widget.carouselList.indexOf(e);

              return AnimatedContainer(
                duration: kAnimationDuration,
                margin: EdgeInsets.only(right: 5),
                height: 6,
                width: _current == index ? 20 : 6,
                decoration: BoxDecoration(
                  color: _current == index ? kPrimaryColor : Color(0xFFD8D8D8),
                  borderRadius: BorderRadius.circular(3),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
