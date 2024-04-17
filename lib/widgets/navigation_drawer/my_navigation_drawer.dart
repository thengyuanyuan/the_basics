import 'package:flutter/material.dart';
import 'package:the_basics/routing/routes_names.dart';
import 'package:the_basics/widgets/navigation_drawer/navdrawer_item.dart';
import 'package:the_basics/widgets/navigation_drawer/navdrawer_header.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: const Column(
        children: [
          NavDrawerHeader(),
          NavDrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
            navigationPath: episodesRoute,
          ),
          NavDrawerItem(
            title: 'About',
            icon: Icons.help,
            navigationPath: aboutRoute,
          )
        ],
      ),
    );
  }
}
