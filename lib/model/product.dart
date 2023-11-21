// Products modals
import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String image;
  final String description;

  const Product(
      {required this.name,
      required this.price,
      required this.image,
      required this.description});
}

// Dummy data
class DummyData extends ChangeNotifier {
  final List<Product> _shop = [
    const Product(
        name: "Samsung S23 ultra",
        price: 600,
        image: "lib/assets/images/samsung.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur"),
    const Product(
        name: "Vivo V7 ",
        price: 430,
        image: "lib/assets/images/samsung.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur"),
    const Product(
        name: "Iphone 15 Pro max",
        price: 1100,
        image: "lib/assets/images/samsung.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur"),
    const Product(
        name: "Xiaomi note 12 ultra",
        price: 360,
        image: "lib/assets/images/samsung.jpg",
        description: "Lorem ipsum dolor sit amet, consectetur")
  ];

  final List<Product> _cart = [];
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFormCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
