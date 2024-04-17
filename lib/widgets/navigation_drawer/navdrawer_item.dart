import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_item.dart';

class NavDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const NavDrawerItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 30),
          NavBarItem(title),
        ],
      ),
    );
  }
}
