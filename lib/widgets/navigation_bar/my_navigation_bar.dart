import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'my_navigation_bar_tablet_desktop.dart';
import 'my_navigation_bar_mobile.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const MyNavigationBarMobile(),
      tablet: (BuildContext context) => const MyNavigationBarTabletDesktop(),
    );
  }
}
