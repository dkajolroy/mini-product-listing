import 'package:flutter/material.dart';
import 'package:flutter_application_01/model/product.dart';
import 'package:flutter_application_01/screens/cart_screen.dart';
import 'package:flutter_application_01/screens/home_screen.dart';
import 'package:flutter_application_01/screens/intro_screen.dart';
import 'package:flutter_application_01/theme/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DummyData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App One',
      theme: lightTheme,
      initialRoute: "/",
      routes: {
        "/": (context) => const IntroScreen(),
        "/home": (context) => const HomeScreen(),
        "/cart": (context) => const CartScreen(),
      },
    );
  }
}
