import 'package:flutter/material.dart';
import 'package:flutter_application_01/components/custom_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Minimal Shop",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Premium Quality Products",
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              child: const Icon(Icons.arrow_forward)),
        ],
      )),
    );
  }
}
