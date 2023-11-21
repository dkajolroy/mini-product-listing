import 'package:flutter/material.dart';
import 'package:flutter_application_01/components/list_tile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
              child: Icon(
            Icons.shopping_bag,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          )),
          DrawerListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          DrawerListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text("Cart"),
            onTap: () {
              Navigator.pushNamed(context, "/cart");
            },
          ),
          DrawerListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          DrawerListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Exit"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
