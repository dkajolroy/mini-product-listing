import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final void Function()? onTap;
  final Widget leading;
  final Widget title;
  const DrawerListTile(
      {super.key,
      required this.title,
      required this.leading,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      onTap: onTap,
    );
  }
}
