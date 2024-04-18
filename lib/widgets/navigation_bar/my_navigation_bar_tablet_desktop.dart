import 'package:flutter/material.dart';
import 'package:the_basics/routing/routes_names.dart';

import '../navbar_item/navbar_item.dart';
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
              NavBarItem(
                title: 'Episodes',
                icon: Icons.videocam,
                navigationPath: episodesRoute,
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'About',
                icon: Icons.help,
                navigationPath: aboutRoute,
              ),
            ],
          )
        ],
      ),
    );
  }
}
