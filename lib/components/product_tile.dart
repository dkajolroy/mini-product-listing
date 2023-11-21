import 'package:flutter/material.dart';
import 'package:flutter_application_01/model/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            color: Colors.grey,
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "lib/assets/images/samsung.jpg",
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Text(
              "\$${product.price}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ));
  }
}
