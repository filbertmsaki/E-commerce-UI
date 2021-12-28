// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> cartProducts = [
  Cart(product: products[0], numOfItem: 2),
  Cart(product: products[1], numOfItem: 1),
  Cart(product: products[3], numOfItem: 1),
];