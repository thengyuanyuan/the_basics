import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';

import '../../services/navigation_service.dart';
import '../../locator.dart';
import 'navbar_item_mobile.dart';
import 'navbar_item_tablet_desktop.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData? icon;

  const NavBarItem({
    super.key,
    required this.title,
    required this.navigationPath,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    NavBarItemModel model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      icon: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout.builder(
          tablet: (BuildContext context) => const NavBarItemTabletDesktop(),
          mobile: (BuildContext context) => const NavBarItemMobile(),
        ),
      ),
    );
  }
}
