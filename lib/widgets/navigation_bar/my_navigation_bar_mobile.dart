import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class MyNavigationBarMobile extends StatelessWidget {
  const MyNavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
          const NavBarLogo(),
        ],
      ),
    );
  }
}
