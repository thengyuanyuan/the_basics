import 'package:flutter/material.dart';
import 'package:the_basics/extensions/hover_extensions.dart';

import '../../routing/routes_names.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(homeRoute);
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('assets/images/logo.png'),
      ),
    ).showCursorOnHover;
  }
}
