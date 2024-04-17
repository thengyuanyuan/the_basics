import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class MyNavigationBarTabletDesktop extends StatelessWidget {
  const MyNavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }
}
