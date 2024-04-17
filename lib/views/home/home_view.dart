import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/home/home_content_mobile.dart';

import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_bar/my_navigation_bar.dart';
import '../../widgets/navigation_drawer/my_navigation_drawer.dart';
import 'home_content_desktop.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                child: ScreenTypeLayout.builder(
                  mobile: (BuildContext context) => const HomeContentMobile(),
                  desktop: (BuildContext context) => const HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
