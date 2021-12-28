import 'package:flutter/material.dart';

class Carousel {
  final int id;
  final String title, description,url;
  final String images;

  Carousel( {
    required this.url,
    required this.id,
    required this.title,
    required this.description,
    required this.images ,
  });
}

List<Carousel> carousel = [
  Carousel(
    id: 291,
    title: "Carousel 0",
    description: "This is the first carouse",
    images: "assets/images/carousel/carousel1.jpg",
    url: "https://res.cloudinary.com/programming-night/image/upload/v1614513603/gemma_stpj_HJ_Gq_Zyw_unsplash_9bf251892f.jpg",
  ),
  Carousel(
    id: 292,
    title: "Carousel 1",
    description: "This is the first carouse",
    images: "assets/images/carousel/carousel1.jpg",
    url: "https://res.cloudinary.com/programming-night/image/upload/v1614513603/gemma_stpj_HJ_Gq_Zyw_unsplash_9bf251892f.jpg",
  ),
  Carousel(
    id: 293,
    title: "Carousel 2",
    description: "This is the second carouse",
    images: "assets/images/carousel/carousel2.jpg",
    url: "https://res.cloudinary.com/programming-night/image/upload/v1614513607/neonbrand_Svh_XD_3k_PSTY_unsplash_11a0e33129.jpg",
  ),
  Carousel(
    id: 294,
    title: "Carousel 3",
    description: "This is the third carouse",
    images: "assets/images/carousel/carousel3.jpg",
     url: "https://res.cloudinary.com/programming-night/image/upload/v1614513609/neonbrand_9m2_R_Zv_HS_c_U_unsplash_6a14fab32a.jpg",
  ),
  Carousel(
    id: 295,
    title: "Carousel 4",
    description: "This is the fouth carouse",
    images: "assets/images/carousel/carousel4.jpg",
     url: "https://res.cloudinary.com/programming-night/image/upload/v1614513605/scott_warman_Np_Nv_I4il_T4_A_unsplash_29d234b68c.jpg",
  ),
  Carousel(
    id: 296,
    title: "Carousel 5",
    description: "This is the firth carouse",
    images: "assets/images/carousel/carousel5.jpg",
     url: "https://res.cloudinary.com/programming-night/image/upload/v1614513608/strawberry_ice_cream_2239377_1920_6669b5ca92.jpg",
  ),
];
