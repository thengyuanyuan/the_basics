import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../routing/router.dart';
import '../../routing/routes_names.dart';
import '../../locator.dart';
import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_bar/my_navigation_bar.dart';
import '../../widgets/navigation_drawer/my_navigation_drawer.dart';
import '../../services/navigation_service.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const MyNavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              const MyNavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: episodesRoute,

                  ///TODO: change it back to homeRoute
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
