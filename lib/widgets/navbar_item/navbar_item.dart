import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';
import '../../services/navigation_service.dart';
import '../../locator.dart';
import 'navbar_item_mobile.dart';
import 'navbar_item_tablet_desktop.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const NavBarItem({
    super.key,
    required this.title,
    required this.navigationPath,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    NavBarItemModel model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: ScreenTypeLayout.builder(
        tablet: (BuildContext context) => NavBarItemTabletDesktop(
          model: model,
        ),
        mobile: (BuildContext context) => NavBarItemMobile(
          model: model,
        ),
      ),
    );
  }
}
