import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CarouselBanner extends StatelessWidget {
  CarouselBanner({Key? key}) : super(key: key);

  final List<String> imageList = [
    'https://res.cloudinary.com/programming-night/image/upload/v1614513608/strawberry_ice_cream_2239377_1920_6669b5ca92.jpg',
    'https://res.cloudinary.com/programming-night/image/upload/v1614513603/gemma_stpj_HJ_Gq_Zyw_unsplash_9bf251892f.jpg',
    'https://res.cloudinary.com/programming-night/image/upload/v1614513607/neonbrand_Svh_XD_3k_PSTY_unsplash_11a0e33129.jpg',
    'https://res.cloudinary.com/programming-night/image/upload/v1614513609/neonbrand_9m2_R_Zv_HS_c_U_unsplash_6a14fab32a.jpg',
    'https://res.cloudinary.com/programming-night/image/upload/v1614513605/scott_warman_Np_Nv_I4il_T4_A_unsplash_29d234b68c.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselBannerWithDot(
            imgList: imageList,
          ),
        ],
      ),
    );
  }
}

class CarouselBannerWithDot extends StatefulWidget {
  List<String> imgList;

  CarouselBannerWithDot({Key? key, required this.imgList}) : super(key: key);

  @override
  State<CarouselBannerWithDot> createState() => _CarouselBannerWithDotState();
}

class _CarouselBannerWithDotState extends State<CarouselBannerWithDot> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map(
          (item) => Container(
            margin: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    item,
                    fit: BoxFit.cover,
                    width: 1000,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        "No. ${widget.imgList.indexOf(item)} image",
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
          ),
        )
        .toList();
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return AnimatedContainer(
              duration: kAnimationDuration,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              height: 6,
              width: _current == index ? 20 : 6,
              decoration: BoxDecoration(
                color:
                    _current == index ? kPrimaryColor : const Color(0xFFD8D8D8),
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
